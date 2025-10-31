#!/bin/bash
# Start script for macOS/Linux. Requires a terminal emulator like gnome-terminal or iTerm.
ROOT="$(cd "$(dirname "$0")" && pwd)"
echo "Starting HedgeHousing — ensure Node.js (>=16) and a terminal emulator are installed."
# Backend
if command -v gnome-terminal >/dev/null 2>&1; then
  gnome-terminal -- bash -ic "cd "$ROOT/backend"; echo Installing backend deps...; npm install; echo Starting backend...; npm run dev; exec bash"
elif command -v xterm >/dev/null 2>&1; then
  xterm -e "bash -ic 'cd "$ROOT/backend"; npm install; npm run dev; bash'" &
else
  echo "No supported terminal emulator found. Run these commands manually:"
  echo "cd "$ROOT/backend" && npm install && npm run dev"
fi
# Frontend
if command -v gnome-terminal >/dev/null 2>&1; then
  gnome-terminal -- bash -ic "cd "$ROOT/frontend"; echo Installing frontend deps...; npm install; echo Starting frontend...; npm run dev; exec bash"
elif command -v xterm >/dev/null 2>&1; then
  xterm -e "bash -ic 'cd "$ROOT/frontend"; npm install; npm run dev; bash'" &
else
  echo "No supported terminal emulator found. Run these commands manually:"
  echo "cd "$ROOT/frontend" && npm install && npm run dev"
fi
