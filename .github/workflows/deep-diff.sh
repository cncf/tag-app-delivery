#!/bin/bash
# This script lists files that have been added or edited under a specified directory,
# including the targets of any symlinks.

set -e

if [ "$#" -ne 1 ] && [ "$#" -ne 3 ]; then
    echo "The number of arguments must be either 1 or 3."
    echo "Usage: ./list-targets.sh [path] <[commit] [commit]>"
    exit 1
fi

if [ "$#" -eq 1 ]; then
  git diff --name-only "$1"
else
  git diff --name-only "$2" "$3" "$1"
fi

# Differences in targets of symbolic links.
symlinks=$(find "$1" -type l)
for l in ${symlinks}; do
  linktarget=$(readlink -f "${l}")

  if [ "$#" -eq 1 ]; then
    git diff --name-only "$(realpath --relative-to=. "${linktarget}")"
  else
    git diff --name-only "$2" "$3" "$(realpath --relative-to=. "${linktarget}")"
  fi
done
