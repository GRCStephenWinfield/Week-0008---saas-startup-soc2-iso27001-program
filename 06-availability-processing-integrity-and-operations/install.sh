#!/usr/bin/env bash
# CloudNimbus, Inc. — Phase 06 · Availability, Processing Integrity and Operations
# Illustrative portfolio sample. Unpacks in place and lists the package.
set -euo pipefail
here="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
echo "Phase 06 — Availability, Processing Integrity and Operations"
echo "CloudNimbus, Inc. · SOC 2 Type II + ISO/IEC 27001:2022 · vantage 2026-09-30"
echo
find "$here" -type f \( -name '*.md' -o -name '*.xlsx' \) | sort | sed "s|$here/||"
echo
echo "Start at 06.00-README.md."
