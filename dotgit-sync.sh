#!/usr/bin/env bash
# dotgit-sync.sh — sync script for end-4 dotfiles bare repo
# Usage: ./dotgit-sync.sh "optional commit message"
#
# PENTING: use whitelist (PATHS array), not `add -A` plain.
# This prevents incidents like what happened before: bare repo + --work-tree=$HOME
# means add -A can scoop up ANYTHING in $HOME (Music, browser cache,
# game save data, etc.) if it accidentally gets tracked once
 
set -e
 
DOTGIT="git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
 
MSG="${1:-update dotfiles $(date '+%Y-%m-%d %H:%M')}"
 
# Path must be in $HOME, don't uwse / in between..
PATHS=(
  ".config/fastfetch"
  ".config/fish"
  ".config/fuzzel"
  ".config/hypr"
  ".config/kitty"
  ".config/matugen"
  ".config/quickshell"
  ".config/nvim"
  "dotgit-sync.sh"
)
 
echo "==> status repo before add:"
$DOTGIT status -s
 
echo "==> add changes into the whitelist folder..."
$DOTGIT add -A -- "${PATHS[@]}"
 
echo "==> Commit: $MSG"
if $DOTGIT diff --cached --quiet; then
  echo "Theres no changes in the commit."
else
  $DOTGIT commit -m "$MSG"
fi
 
echo "==> Push Into origin/main..."
$DOTGIT push origin main
 
echo "==> Done."
 

