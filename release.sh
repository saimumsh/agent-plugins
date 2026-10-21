#!/usr/bin/env bash
# Usage: ./release.sh [patch|minor|major]   (default: patch)
# Bumps VERSION, rebuilds all plugins, commits and pushes to GitHub.
set -e
cd "$(dirname "$0")"
IFS=. read -r MA MI PA < VERSION
case "${1:-patch}" in
  major) MA=$((MA+1)); MI=0; PA=0;;
  minor) MI=$((MI+1)); PA=0;;
  patch) PA=$((PA+1));;
  *) echo "usage: ./release.sh [patch|minor|major]"; exit 1;;
esac
echo "$MA.$MI.$PA" > VERSION
./build.sh
git add -A
git commit -m "Release $MA.$MI.$PA"
git push
echo "Released $MA.$MI.$PA - now update the marketplace in Claude."
