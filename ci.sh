#!/bin/bash

git pull
git config --global user.email 'yonghongwang@163.com'
git config --global user.name 'wangyonghong'

git checkout update

python3 update_casks.py
sed -i "s/^Last Update Time.*/Last Update Time: $(date '+%Y-%m-%d %H:%M:%S')/g" README.md

git merge master
git add .
git commit -m "update"
git push -u origin update


