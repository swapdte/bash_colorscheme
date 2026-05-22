#!/usr/bin/env bash

# colorschemeswitch.sh
# Passt das KDE Plasma-Farbschema automatisch an die Tageszeit an.
# Hell (Qogir): 08:00 – 19:59 | Dunkel (QogirDark): 20:00 – 07:59

set -euo pipefail

readonly DEFAULT_SCHEME="BreezeClassic"
readonly LIGHT_SCHEME="Qogir"
readonly DARK_SCHEME="QogirDark"

current_hour=$(date +"%-H")

if ((current_hour >= 8 && current_hour < 20)); then
  scheme="$LIGHT_SCHEME"
  label="hell"
else
  scheme="$DARK_SCHEME"
  label="dunkel"
fi

echo "Aktuelle Uhrzeit: $(date +"%H:%M") Uhr"
echo "Wechsel zu Standard-Farbschema."
plasma-apply-colorscheme "$DEFAULT_SCHEME"
echo "Farbschema wird gewechselt zu: ${scheme} (${label})"

echo "Wechsel wird in 3 Sekunden ausgeführt …"
sleep 3

plasma-apply-colorscheme "$scheme"

echo ""
echo "Farbschema erfolgreich auf '${scheme}' geändert."
echo "Danke, schönen Tag noch!"
