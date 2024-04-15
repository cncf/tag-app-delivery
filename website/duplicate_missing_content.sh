#!/bin/bash
#
# This script duplicates the content of the default language to all other languages under content/
#

ROOT="content"
DEFAULT_LANG="en"

duplicate_pages() {
    if [ $1 != $ROOT/$DEFAULT_LANG ]; then
        # -R to handle directories
        # -n to avoid overwriting existing files
        # -L to follow symlinks
        cp -R -n -L $ROOT/$DEFAULT_LANG/* $1
    fi
}

for d in $ROOT/*; do
 duplicate_pages $d
done