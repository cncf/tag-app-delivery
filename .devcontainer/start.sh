#!/bin/bash

git config --global --add safe.directory /workspaces/tag-app-delivery
git submodule update --init --recursive
cd website
npm install
hugo server -D