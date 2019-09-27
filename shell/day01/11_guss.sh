#!/bin/bash

#生成1~5之间随机整数
computer=$[RANDOM%5+1]
echo $computer
read -p "请猜数字" you
if [ $you -gt $computer ];then
	echo '大于'
elif [ $you -eq $computer   ];then
	echo '等于'
elif [ $you -lt $computer ];then
	echo '小于'
fi

