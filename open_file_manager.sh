#!/bin/bash

# 检测当前操作系统
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    # 如果是 Linux，使用 xdg-open
    xdg-open "$1"
elif [[ "$OSTYPE" == "darwin"* ]]; then
    # 如果是 macOS，使用 open
    open "$1"
else
    echo "Unsupported OS: $OSTYPE"
fi
