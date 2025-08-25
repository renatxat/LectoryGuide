#!/bin/bash

set -ev

CUR_DIR="$(pwd)"
SCRIPT_DIR="$(realpath "$(dirname "${BASH_SOURCE[0]}" )")"
HEADING_DIR="$(dirname "${SCRIPT_DIR}")"
PROJECT_DIR="$(dirname "${HEADING_DIR}")"

# Commit changes in Headings
source "${SCRIPT_DIR}/CommitAndPush.sh"

# Add new commits from submodule
cd "${PROJECT_DIR}"
git add Headings
STATUS=$(git status -s)
if [ -n "${STATUS}" ]; then
  git commit -m "update Headings"
fi;

NOT_PUSHED_COMMITS="$(git log origin/master..master)"
if [ -n "${NOT_PUSHED_COMMITS}" ]; then
  git push --recurse-submodules=on-demand
fi
