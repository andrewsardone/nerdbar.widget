#!/bin/bash

if [ "$(ps aux | grep Spotify.app | grep -v grep | wc -l)" -lt 1 ]; then
  echo "@@not running@@"
  exit 0
fi

RESULTX="$(/usr/local/bin/spotify status 2>/dev/null; echo x)"
RESULT="${RESULTX%x}"

# echo "$(echo "$RESULT" | grep "Artist" | awk -F":" '{print $2}')@$(echo "$RESULT" | grep "Track:" | awk -F":" '{print $2}')@$(echo "$RESULT" | grep "Position:" | awk -F" " '{print $2}')@$(echo "$RESULT" | grep "Position:" | awk -F" " '{print $4}')@$(echo "$RESULT" | grep 'Spotify is currently' | awk -F" " '{print $4}')"

echo "$(echo "$RESULT" | grep "Artist" | awk -F":" '{print $2}') – $(echo "$RESULT" | grep "Track:" | awk -F":" '{print $2}')"
