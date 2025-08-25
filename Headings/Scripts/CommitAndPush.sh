#!/bin/bash

set -ev

CUR_DIR="$(pwd)"
SCRIPT_DIR="$(realpath "$(dirname "${BASH_SOURCE[0]}" )")"
HEADING_DIR="$(dirname "${SCRIPT_DIR}")"
PROJECT_DIR="$(dirname "${HEADING_DIR}")"

cd "${HEADING_DIR}"

STATUS=$(git status -s)
if [ -n "${STATUS}" ]; then
  git add -A
  git commit -m "feat: updates"
  git push
fi

cd "${CUR_DIR}"
