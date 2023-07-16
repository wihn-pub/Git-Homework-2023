#!/bin/bash
content=$(cat ./hw.txt)
lines=(0 0 0)
i=0

for line in $content
do
    lines[$i]=$line
    i=$((i+1))
done

ans=$((${lines[0]: -1} * ${lines[1]: -1}))
res=$(echo ${lines[2]} | tr -cd "[0-9]")
# echo $ans
# echo $res

if [ $ans != $res ]
then
    exit 1
else
    echo "correct"
fi
