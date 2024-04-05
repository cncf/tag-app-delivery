#!/bin/bash

ROOT="content"
DEFAULT_LANG="en"

duplicate_missing_content() {

    if [ $1 != $ROOT/$DEFAULT_LANG ]; then
        cp -R -n -L $ROOT/$DEFAULT_LANG/* $1
    fi
}

for d in $ROOT/*; do
 duplicate_missing_content $d
done