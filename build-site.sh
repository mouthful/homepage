#!/usr/bin/env bash
# Build hezh site into docs/ (for GitHub Pages or local preview).
set -euo pipefail
ROOT="$(cd "$(dirname "$0")" && pwd)"
cd "$ROOT/hezh"
../jemdoc -c mysite.conf -o index.html homepage.jemdoc
../jemdoc -c mysite.conf research.jemdoc
mkdir -p ../docs
cp -f index.html research.html jemdoc.css fig1.png ../docs/
touch ../docs/.nojekyll
echo "OK: built to docs/"
