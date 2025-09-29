#!/bin/bash

status=$(git status --porcelain)

if [ -z "$status" ]; then
    echo "沒有新的修改，工作區乾淨 ✅"
else
    git add .
    datetime=$(date '+%Y-%m-%d %H:%M:%S')
    git commit -m "自動同步更新 $datetime"
    echo "已在本地 commit ✅"
fi
