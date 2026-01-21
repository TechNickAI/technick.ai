#!/usr/bin/env python3
"""
Update GitHub stats for technick.ai
Queries both email addresses, resumes from where it left off
"""

import json
import subprocess
import sys
from datetime import datetime
from pathlib import Path

EMAILS = ["nick@technick.ai", "nick@sullivanflock.com"]
OUTPUT_FILE = Path("data/stats.json")


def gh_api(endpoint: str) -> dict | list | None:
    """Call GitHub API via gh CLI"""
    try:
        result = subprocess.run(
            ["gh", "api", endpoint],
            capture_output=True,
            text=True,
            timeout=30,
        )
        if result.returncode == 0:
            return json.loads(result.stdout)
        if "rate limit" in result.stderr.lower():
            return None  # Rate limited
        return None
    except (subprocess.TimeoutExpired, json.JSONDecodeError):
        return None


def get_commit_count_by_email(email: str) -> int | None:
    """Get total commits for an email address"""
    data = gh_api(f"search/commits?q=author-email:{email}&per_page=1")
    if data and "total_count" in data:
        return data["total_count"]
    return None


def get_monthly_commits(email: str, year: int, month: int) -> int | None:
    """Get commits for a specific month"""
    start = f"{year}-{month:02d}-01"
    if month == 12:
        end = f"{year + 1}-01-01"
    else:
        end = f"{year}-{month + 1:02d}-01"

    data = gh_api(f"search/commits?q=author-email:{email}+committer-date:{start}..{end}&per_page=1")
    if data and "total_count" in data:
        return data["total_count"]
    return None


def get_repo_count() -> int:
    """Get total repos across personal and orgs"""
    total = 0

    # Personal repos
    personal = gh_api("users/TechNickAI/repos?per_page=100")
    if personal:
        total += len(personal)

    # Org repos
    orgs = gh_api("user/orgs")
    if orgs:
        for org in orgs:
            org_repos = gh_api(f"orgs/{org['login']}/repos?per_page=100")
            if org_repos:
                total += len(org_repos)

    return total


def main():
    print("Fetching GitHub stats...")

    # Load existing data
    existing = {}
    if OUTPUT_FILE.exists():
        with open(OUTPUT_FILE) as f:
            existing = json.load(f)

    # Get total commits
    total_commits = 0
    for email in EMAILS:
        count = get_commit_count_by_email(email)
        if count is not None:
            print(f"  {email}: {count}")
            total_commits += count
        else:
            print(f"  {email}: rate limited or error")

    print(f"Total commits: {total_commits}")

    # Get repo count
    repos = get_repo_count()
    print(f"Total repos: {repos}")

    # Get monthly data, resuming from existing
    existing_months = existing.get("by_month", {})
    by_month = dict(existing_months)  # Start with what we have

    now = datetime.now()
    rate_limited = False

    for year in range(2011, now.year + 1):
        max_month = 12 if year < now.year else now.month
        for month in range(1, max_month + 1):
            key = f"{year}-{month:02d}"

            # Skip if we already have this month
            if key in by_month:
                continue

            if rate_limited:
                continue

            month_total = 0
            for email in EMAILS:
                count = get_monthly_commits(email, year, month)
                if count is None:
                    print(f"Rate limited at {key}")
                    rate_limited = True
                    break
                month_total += count

            if not rate_limited and month_total > 0:
                by_month[key] = month_total
                print(f"  {key}: {month_total}")

    # Sort by_month by key
    by_month = dict(sorted(by_month.items()))

    # Write output
    output = {
        "commits": total_commits,
        "repos": repos,
        "updated": datetime.now().strftime("%Y-%m-%d"),
        "by_month": by_month,
        "emails": EMAILS,
    }

    OUTPUT_FILE.parent.mkdir(parents=True, exist_ok=True)
    with open(OUTPUT_FILE, "w") as f:
        json.dump(output, f, indent=2)

    print(f"Updated {OUTPUT_FILE}")
    print(f"Collected {len(by_month)} months of data")


if __name__ == "__main__":
    main()
