#!/bin/bash
# GitHub Stats for TechNickAI
# Uses GitHub Search API to get accurate commit counts

USERNAME="TechNickAI"

echo "=== GitHub Stats for $USERNAME ==="
echo ""

# Total commits
total=$(gh api "search/commits?q=author:$USERNAME&per_page=1" --jq '.total_count' 2>/dev/null)
echo "TOTAL COMMITS: $total"
echo ""

# Commits by year
echo "COMMITS BY YEAR:"
echo "----------------"
current_year=$(date +%Y)
for year in $(seq $current_year -1 2011); do
  count=$(gh api "search/commits?q=author:$USERNAME+committer-date:${year}-01-01..${year}-12-31&per_page=1" --jq '.total_count' 2>/dev/null)
  if [ -n "$count" ] && [ "$count" != "0" ]; then
    printf "%s: %6d\n" "$year" "$count"
  fi
done

echo ""

# Total repos (personal + orgs)
echo "REPOS:"
echo "------"
personal=$(gh api "users/$USERNAME/repos" --paginate --jq '.[].name' 2>/dev/null | wc -l | tr -d ' ')
echo "Personal: $personal"

orgs=$(gh api user/orgs --jq '.[].login' 2>/dev/null)
org_total=0
for org in $orgs; do
  count=$(gh api "orgs/$org/repos" --jq 'length' 2>/dev/null || echo "0")
  if [ "$count" != "0" ]; then
    echo "$org: $count"
    org_total=$((org_total + count))
  fi
done
echo "Org total: $org_total"
echo "TOTAL REPOS: $((personal + org_total))"
