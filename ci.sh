#!/bin/bash

git pull origin master
git pull origin update

git config --local user.email 'yonghongwang@163.com'
git config --local user.name 'wangyonghong'

git checkout update
git merge master --allow-unrelated-histories

python3 update_casks.py
sed -i "s/^Last Update Time.*/Last Update Time: $(date '+%Y-%m-%d %H:%M:%S')/g" README.md

git add .
git commit -m "update"
git push -u origin update


