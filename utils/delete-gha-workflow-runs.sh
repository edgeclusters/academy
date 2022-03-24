#!/usr/bin/env bash

if [ ! $# -eq 2 ]; then
    echo "Usage $0 <repo owner> <repo name>"
    echo
    exit 1
fi

OWNER=$1
REPO=$2

for i in $(gh api /repos/$OWNER/$REPO/actions/runs | jq -r '.workflow_runs[] | [.id] | @tsv'); do \
    gh api -X DELETE /repos/$OWNER/$REPO/actions/runs/$i; \
done
