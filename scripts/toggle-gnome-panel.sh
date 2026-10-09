#!/usr/bin/env bash

SCHEMA="org.gnome.shell.extensions.just-perfection"
DIR="$HOME/.local/share/gnome-shell/extensions/just-perfection-desktop@just-perfection/schemas"

# Use local schema if available
if [[ -d "$DIR" ]]; then
  GSETTINGS=(gsettings --schemadir "$DIR")
else
  GSETTINGS=(gsettings)
fi

# Toggle panel visibility
CURRENT=$("${GSETTINGS[@]}" get "$SCHEMA" panel) || exit 1

if [[ "$CURRENT" == "true" ]]; then
  "${GSETTINGS[@]}" set "$SCHEMA" panel false
else
  "${GSETTINGS[@]}" set "$SCHEMA" panel true
fi
