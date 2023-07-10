#!/bin/bash

# 读取info.txt中的三行文字
read line1
read line2
read line3 < info.txt

# 使用sed命令提取每行末尾的数字
num1=$(echo "$line1" | sed 's/.*\([0-9]\)$/\1/')
num2=$(echo "$line2" | sed 's/.*\([0-9]\)$/\1/')
num3=$(echo "$line3" | sed 's/.*\([0-9]\)$/\1/')

# 计算并判断结果
result=$(expr $num1 \* $num2 % 10)
if [ $result -eq $num3 ]; then
  echo "第一行和第二行末尾的数字乘积的个位为$num3"
else
  echo "第一行和第二行末尾的数字乘积的个位不为$num3"
  exit 1 # 执行失败
fi
