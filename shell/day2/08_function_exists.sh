#!/bin/bash
is_directory(){
	read -p "输入文件名" file
	directory="/home/tarena/$file"
	if [ -d $directory ];then
		echo "该目录已存在"	
	else
		mkdir $directory
		echo "目录$directory创建成功"
	fi
}
is_directory
