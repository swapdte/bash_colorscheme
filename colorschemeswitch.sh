#!/usr/bin/env bash

# colorschemeswitch.sh
# Passt das KDE Plasma-Farbschema automatisch an die Tageszeit an.
# Hell (WhiteSur): 08:00 – 19:59 | Dunkel (WhiteSurDark): 20:00 – 07:59

set -euo pipefail

readonly LIGHT_SCHEME="WhiteSur"
readonly DARK_SCHEME="WhiteSurDark"

current_hour=$(date +"%-H")

if ((current_hour >= 8 && current_hour < 20)); then
  scheme="$LIGHT_SCHEME"
  label="hell"
else
  scheme="$DARK_SCHEME"
  label="dunkel"
fi

echo "Aktuelle Uhrzeit: $(date +"%H:%M") Uhr"
echo "Farbschema wird gewechselt zu: ${scheme} (${label})"

echo "Wechsel wird in 1 Sekunde ausgeführt …"
sleep 1

plasma-apply-colorscheme "$scheme"

echo ""
echo "Farbschema erfolgreich auf '${scheme}' geändert."
echo "Danke, schönen Tag noch!"
