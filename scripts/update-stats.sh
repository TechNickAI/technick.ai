#!/bin/bash
# Update GitHub stats for technick.ai
# Queries both email addresses, resumes from where it left off

EMAILS=("nick@technick.ai" "nick@sullivanflock.com")
OUTPUT_FILE="data/stats.json"

echo "Fetching GitHub stats..."

# Read existing data if present
if [ -f "$OUTPUT_FILE" ]; then
  existing=$(cat "$OUTPUT_FILE")
else
  existing='{}'
fi

# Get total commits across both emails
total_commits=0
for email in "${EMAILS[@]}"; do
  count=$(gh api "search/commits?q=author-email:$email&per_page=1" --jq '.total_count' 2>/dev/null || echo 0)
  if [[ "$count" =~ ^[0-9]+$ ]]; then
    echo "  $email: $count"
    total_commits=$((total_commits + count))
  fi
done
echo "Total commits: $total_commits"

# Get total repos
personal=$(gh api "users/TechNickAI/repos" --paginate --jq '.[].name' 2>/dev/null | wc -l | tr -d ' ')
org_repos=0
for org in $(gh api user/orgs --jq '.[].login' 2>/dev/null); do
  count=$(gh api "orgs/$org/repos" --jq 'length' 2>/dev/null || echo 0)
  org_repos=$((org_repos + count))
done
repos=$((personal + org_repos))
echo "Total repos: $repos"

# Extract existing by_month data
existing_months=$(echo "$existing" | jq -r '.by_month // {} | keys[]' 2>/dev/null || echo "")

# Build list of all months from 2011 to now
current_year=$(date +%Y)
current_month=$(date +%m)
all_months=""
for year in $(seq 2011 $current_year); do
  max_month=12
  if [ "$year" = "$current_year" ]; then
    max_month=$((10#$current_month))
  fi
  for month in $(seq 1 $max_month); do
    all_months="$all_months ${year}-$(printf '%02d' $month)"
  done
done

# Collect monthly data, skipping already collected months
by_month="{"
rate_limited=false
for ym in $all_months; do
  # Check if already have this month
  if echo "$existing_months" | grep -q "^$ym$"; then
    value=$(echo "$existing" | jq -r ".by_month[\"$ym\"]")
    by_month="$by_month\"$ym\": $value,"
    continue
  fi

  if $rate_limited; then
    continue
  fi

  year=${ym%-*}
  month=${ym#*-}

  if [ "$month" = "12" ]; then
    end="$((year + 1))-01-01"
  else
    next=$(printf "%02d" $((10#$month + 1)))
    end="${year}-${next}-01"
  fi

  month_total=0
  for email in "${EMAILS[@]}"; do
    count=$(gh api "search/commits?q=author-email:$email+committer-date:${year}-${month}-01..${end}&per_page=1" --jq '.total_count' 2>/dev/null)
    if [[ "$count" =~ ^[0-9]+$ ]]; then
      month_total=$((month_total + count))
    else
      echo "Rate limited at $ym"
      rate_limited=true
      break
    fi
  done

  if ! $rate_limited && [ "$month_total" -gt 0 ]; then
    by_month="$by_month\"$ym\": $month_total,"
    echo "  $ym: $month_total"
  fi
done
by_month="${by_month%,}}"

# Write JSON
cat > "$OUTPUT_FILE" << EOF
{
  "commits": $total_commits,
  "repos": $repos,
  "updated": "$(date -u +%Y-%m-%d)",
  "by_month": $by_month,
  "emails": ["nick@technick.ai", "nick@sullivanflock.com"]
}
EOF

echo "Updated $OUTPUT_FILE"
