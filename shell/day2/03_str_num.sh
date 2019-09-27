#!/bin/bash

#判断是数字、字母还是其他字符
read -p "请输入一个字符" char
if [ ${#char} != 1 ];then
	echo "${char}不是一个字符"
	exit
elif [ $char == 'q' ];then
	echo "程序退出"
	exit
fi
case $char in 
[0-9])
	echo "$char是数字"
	;;
[a-z]|[A-Z])
	echo "$char是字母"
	;;
*)
	echo "$char是其他字符"
	;;
esac
