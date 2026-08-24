#!/usr/bin/env bash
# CloudNimbus Trust Programme — Phase 04 local setup
set -euo pipefail
HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
echo "Phase 04 — Unified Control Framework & Policy Architecture"
echo "Location: $HERE"
echo
echo "Numbered documents:"; ls -1 "$HERE"/04.*.md | sed 's|.*/|  |'
echo
for d in adr diagrams governance logs templates trackers; do
  printf '  %-12s %s file(s)\n' "$d/" "$(find "$HERE/$d" -type f | wc -l | tr -d ' ')"
done
echo
echo "Verify the package against its manifest:"
echo "  shasum -a 256 -c <(awk -F'\`' '/^\| [0-9]+ \|/ {print $4"  "$2}' "$HERE/MANIFEST.md")"
echo
echo "Start at 04.00-README.md."
