#!/usr/bin/env bash
# CloudNimbus Trust Programme — Phase 05 local setup
set -euo pipefail
HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
echo "Phase 05 — Security Criteria & Technical Controls"
echo "Location: $HERE"
echo
echo "Numbered documents:"; ls -1 "$HERE"/05.*.md | sed 's|.*/|  |'
echo
for d in adr diagrams governance logs templates trackers; do
  printf '  %-12s %s file(s)\n' "$d/" "$(find "$HERE/$d" -type f | wc -l | tr -d ' ')"
done
echo
echo "Verify the package against its manifest:"
echo "  shasum -a 256 -c <(awk -F'\`' '/^\| [0-9]+ \|/ {print $4"  "$2}' "$HERE/MANIFEST.md")"
echo
echo "Start at 05.00-README.md."
