#!/bin/bash

git pull
git config --global user.email 'yonghongwang@163.com'
git config --global user.name 'wangyonghong'

git checkout update

python3 update_casks.py

git add .
git commit -m "update"
git push -u origin update


