#!/usr/bin/env bash
# CloudNimbus, Inc. — Phase 07 · Confidentiality, Privacy and Third-Party Assurance
# Illustrative portfolio sample. Unpacks in place and lists the package.
set -euo pipefail
here="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
echo "Phase 07 — Confidentiality, Privacy and Third-Party Assurance"
echo "CloudNimbus, Inc. · SOC 2 Type II + ISO/IEC 27001:2022 · vantage 2026-11-27"
echo
find "$here" -type f \( -name '*.md' -o -name '*.xlsx' \) | sort | sed "s|$here/||"
echo
echo "Start at 07.00-README.md."
