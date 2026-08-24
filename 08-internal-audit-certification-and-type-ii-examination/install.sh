#!/usr/bin/env bash
# CloudNimbus, Inc. — Phase 08 · Internal Audit, Certification and the Type II Examination
# Illustrative portfolio sample. Unpacks in place and lists the package.
set -euo pipefail
here="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
echo "Phase 08 — Internal Audit, Certification and the Type II Examination"
echo "CloudNimbus, Inc. · SOC 2 Type II + ISO/IEC 27001:2022 · vantage 2027-02-05"
echo
find "$here" -type f \( -name '*.md' -o -name '*.xlsx' \) | sort | sed "s|$here/||"
echo
echo "Start at 08.00-README.md."
