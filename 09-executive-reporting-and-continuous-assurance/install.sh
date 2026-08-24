#!/usr/bin/env bash
# CloudNimbus, Inc. — Phase 09 · Executive Reporting and Continuous Assurance
# Illustrative portfolio sample. Unpacks in place and lists the package.
set -euo pipefail
here="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
echo "Phase 09 — Executive Reporting and Continuous Assurance"
echo "CloudNimbus, Inc. · SOC 2 Type II + ISO/IEC 27001:2022 · vantage 2027-03-11"
echo
find "$here" -type f \( -name '*.md' -o -name '*.xlsx' \) | sort | sed "s|$here/||"
echo
echo "Start at 09.00-README.md."
