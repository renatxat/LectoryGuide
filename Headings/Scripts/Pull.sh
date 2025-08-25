#!/bin/bash

set -ev

CUR_DIR="$(pwd)"
SCRIPT_DIR="$(realpath "$(dirname "${BASH_SOURCE[0]}" )")"
HEADING_DIR="$(dirname "${SCRIPT_DIR}")"
PROJECT_DIR="$(dirname "${HEADING_DIR}")"

echo "[INFO] cd ${HEADING_DIR}"
cd "${HEADING_DIR}"
git fetch
git rebase origin/master
echo "[INFO] cd ${PROJECT_DIR}"

cd "${CUR_DIR}"
