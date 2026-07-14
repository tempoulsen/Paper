#!/usr/bin/env bash
set -euo pipefail

repo_dir="$(cd "$(dirname "$0")" && pwd)"
source_dir="$repo_dir/manuscript"
submission_dir="$repo_dir/submission"

mkdir -p "$submission_dir"
cd "$source_dir"

for target in \
  main.tex \
  main_anonymous.tex \
  online_appendix.tex \
  online_appendix_anonymous.tex \
  title_page.tex
do
  latexmk -pdf -interaction=nonstopmode -halt-on-error "$target"
done

cp main.pdf "$submission_dir/manuscript.pdf"
cp main_anonymous.pdf "$submission_dir/manuscript_anonymous.pdf"
cp online_appendix.pdf "$submission_dir/online_appendix.pdf"
cp online_appendix_anonymous.pdf "$submission_dir/online_appendix_anonymous.pdf"
cp title_page.pdf "$submission_dir/title_page.pdf"
