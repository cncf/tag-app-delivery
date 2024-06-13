#!/bin/bash
# This script finds the commit hash of the base branch from which the branch was created.

set -e

if [ "$#" -ne 1 ]; then
    echo "The number of arguments must be 1." >&2
    echo "Usage: ./find-junction-hash.sh [base ref]" >&2
    exit 1
fi

logs_head="$(git log --pretty=%H)"
logs_upstream="$(git log --pretty=%H $1)"

while read -r lh; do
    while read -r lu; do
        if [[ "${lh}" == "${lu}" ]]; then
            echo -e "${lh}"
            exit 0
        fi
    done <<< "${logs_upstream}"
done <<< "${logs_head}"

echo "Illegal state: no junciton commit found." >&2
exit 1
