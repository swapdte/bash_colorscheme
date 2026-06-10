# Colorscheme Switcher für KDE Plasma

Automatischer Wechsel des KDE-Plasma-Farbschemas basierend auf der aktuellen Tageszeit.

## Autoren

- **Marc Kerkmann** — Autor
- **OpenCode AI (mimo-v2.5-pro)** — Co-Autor

## Voraussetzungen

- KDE Plasma Desktop
- Die Farbschemata **WhiteSur** (hell) und **WhiteSurDark** (dunkel) müssen installiert sein
- Siehe [WhiteSur KDE Theme](https://github.com/vinceliuice/WhiteSur-kde) zur Installation

## Farbschemata

| Zeitraum | Farbschema | Modus |
|---|---|---|
| 08:00 – 19:59 | WhiteSur | Hell |
| 20:00 – 07:59 | WhiteSurDark | Dunkel |

## Nutzung

```bash
chmod +x colorschemeswitch.sh
./colorschemeswitch.sh
```

Das Skript zeigt die aktuelle Uhrzeit an, teilt das gewählte Farbschema mit, wartet 1 Sekunde und wendet das Schema an.

## Automatisierung (optional)

Damit das Schema automatisch bei jeder Anmeldung gewechselt wird, kann das Skript in die KDE-Autostart-Einstellungen aufgenommen werden:

1. Systemeinstellungen → Automatischer Start
2. Skript hinzufügen → `colorschemeswitch.sh` auswählen

Alternativ über die Kommandozeile:

```bash
mkdir -p ~/.config/autostart
cat > ~/.config/autostart/colorschemeswitch.desktop << 'EOF'
[Desktop Entry]
Type=Application
Name=Colorscheme Switcher
Exec=/pfad/zu/colorschemeswitch.sh
Hidden=false
NoDisplay=false
X-GNOME-Autostart-enabled=true
EOF
```

> `/pfad/zu/` durch den tatsächlichen Pfad zum Skript ersetzen.
