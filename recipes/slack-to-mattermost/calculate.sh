#!/usr/bin/env sh
set -eu

team=${TEAM_SIZE:-25}
slack_pro=${SLACK_PRO_MONTHLY:-7.25}
slack_business=${SLACK_BUSINESS_MONTHLY:-15}
mattermost_license=${MATTERMOST_LICENSE_YEARLY:-0}
hosting=${HOSTING_MONTHLY:-40}
backups=${BACKUPS_MONTHLY:-15}
admin_hours=${ADMIN_HOURS_MONTHLY:-3}
hourly_rate=${HOURLY_RATE:-75}
migration_hours=${MIGRATION_HOURS:-24}

for value in "$team" "$slack_pro" "$slack_business" "$mattermost_license" "$hosting" "$backups" "$admin_hours" "$hourly_rate" "$migration_hours"; do
  case "$value" in
    ''|.|.*|*.|*[!0-9.]*|*.*.*) echo "Inputs must be non-negative numbers." >&2; exit 1 ;;
  esac
done

awk -v team="$team" -v pro="$slack_pro" -v business="$slack_business" \
  -v license="$mattermost_license" -v hosting="$hosting" -v backups="$backups" \
  -v admin="$admin_hours" -v rate="$hourly_rate" -v migration="$migration_hours" '
BEGIN {
  slack_pro_year = team * pro * 12
  slack_business_year = team * business * 12
  mattermost_recurring = license + (hosting + backups + admin * rate) * 12
  migration_cost = migration * rate
  printf "Team size: %d\n", team
  printf "Slack Pro year one: $%.2f\n", slack_pro_year
  printf "Slack Business+ year one: $%.2f\n", slack_business_year
  printf "Mattermost self-managed recurring: $%.2f\n", mattermost_recurring
  printf "Mattermost migration: $%.2f\n", migration_cost
  printf "Mattermost self-managed year one: $%.2f\n", mattermost_recurring + migration_cost
  printf "Mattermost self-managed following year: $%.2f\n", mattermost_recurring
}'
