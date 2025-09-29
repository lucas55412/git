#!/bin/bash

# 檢查是否有修改
status=$(git status --porcelain)

if [ -z "$status" ]; then
    echo "沒有新的修改，工作區乾淨 ✅"
else
    # 暫存所有修改
    git add .

    # 使用日期時間作為 commit 訊息
    datetime=$(date '+%Y-%m-%d %H:%M:%S')
    git commit -m "自動同步更新 $datetime"

    # 推送到遠端
    git push

    echo "已同步到遠端 GitHub ✅"
fi
