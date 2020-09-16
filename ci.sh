#!/bin/bash

git checkout update

python update_casks.py

git add .
git commit -m "update"
git push -u origin update

hub pull-request


