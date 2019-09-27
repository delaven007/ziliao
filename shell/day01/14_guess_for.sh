#!/bin/bash

# 1.先生成数字:1-10000
computer=$[RANDOM%10000+1]
echo $computer
for i in {1..30}
do
	read -p "猜" you
	if [ $you -gt $computer ];then
		echo '大于'
	elif [ $you -eq $computer ];then
		echo '等于'
		exit
	elif [ $you -lt $computer ];then
		echo '小于'
	fi
done
