#!/usr/bin/env bash
# Copies shared/reporting-standard.md into every skills/*/SKILL.md, so each
# skill stays one self-contained file (the platform, the docs site and
# single-file hosts only read SKILL.md).
#
# The copy sits under the standard's own title as an H2, with its headings one
# level down, and runs to the next H2 or the end of the file. Edit the shared
# file, then run: tools/sync-reporting-standard.sh
set -euo pipefail
cd "$(dirname "$0")/.."

STANDARD=$(sed 's/^#/##/' shared/reporting-standard.md)
HEADING=$(printf '%s\n' "$STANDARD" | head -1)
export STANDARD HEADING

for file in skills/*/SKILL.md; do
  if ! grep -qxF "$HEADING" "$file"; then
    echo "$file has no \"$HEADING\" heading: add it where the standard should go" >&2
    exit 1
  fi
  awk '
    $0 == ENVIRON["HEADING"] { print ENVIRON["STANDARD"]; skipping = 1; next }
    skipping && /^## / { skipping = 0; print "" }
    !skipping { print }
  ' "$file" > "$file.tmp"
  mv "$file.tmp" "$file"
done
echo "Synced the reporting standard into $(ls skills/*/SKILL.md | wc -l | tr -d ' ') skills"
