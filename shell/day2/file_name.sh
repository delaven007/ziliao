#!/bin/bash
while :
do
	read -p "请输入要创建的目录：" dirname
	directory="/home/tarena/$dirname"
	if [ -z $dirname ];then
		echo "程序退出"
		exit
	elif [ -e $directory  ];then
		echo "$directory已存在"
	else
		mkdir $directory
		echo "$directory创建成功"
	fi
done
