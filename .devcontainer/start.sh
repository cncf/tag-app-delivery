#!/bin/bash

git submodule update --init --recursive
cd website
npm install
hugo server -D