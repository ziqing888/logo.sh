#!/bin/bash

# 检查并安装 toilet 和 lolcat
if ! command -v toilet &> /dev/null; then
    sudo apt update -y
    sudo apt install toilet -y
fi
if ! command -v lolcat &> /dev/null; then
    sudo apt update -y
    sudo apt install lolcat -y
fi

# 使用 toilet 打印大字效果作为 logo
logo_text=$(toilet -f mono12 -F border "@qklxsqf")

# 打印大字 logo 文本
echo "$logo_text" | lolcat

# 打印更长的装饰线和链接信息
echo " 🌐 ——————————————————————————————————————————————————————————— 🌐" | lolcat
echo "   🛰️  X : https://x.com/qklxsqf  ▪️  TG : https://t.me/qklxsqf 🛰️" | lolcat
echo " 🌐 ——————————————————————————————————————————————————————————— 🌐" | lolcat

