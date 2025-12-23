#!/usr/bin/env bash
set -e

# Force stdin to real terminal (critical for curl | bash)
exec </dev/tty

clear
echo
echo "F R E E    G A Y    B O Y K I S S E R S"
echo "I N    Y O U R    A R E A ! ! !"
echo
echo "(PRESS ENTER)"
read

clear

TMPDIR=$(mktemp -d)
trap 'rm -rf "$TMPDIR"' EXIT

curl -L "https://github.com/Fera-Maxwell/nothing/raw/refs/heads/main/viu" -o "$TMPDIR/viu"
chmod +x "$TMPDIR/viu"

curl -L "https://github.com/Fera-Maxwell/nothing/blob/main/boykisser.gif?raw=true" -o "$TMPDIR/boykisser.gif"

"$TMPDIR/viu" "$TMPDIR/boykisser.gif" -a -x 0 -y 0 -w "$(tput cols)" -f 14
