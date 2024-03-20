#!/bin/bash
# This script lists files that have been added or edited under a specified directory,
# including the targets of any symlinks.

set -e

if [ "$#" -ne 3 ]; then
    echo "The number of arguments must be 3." >&2
    echo "Usage: ./deep-diff.sh [path] [commit-before] [commit-after]" >&2
    exit 1
fi

git diff --name-only "$2" "$3" "$1"

# Differences in targets of symbolic links.
symlinks=$(find "$1" -type l)
for l in ${symlinks}; do
    linktarget=$(readlink -f "${l}")
    git diff --name-only "$2" "$3" "$(realpath --relative-to=. "${linktarget}")"
done
