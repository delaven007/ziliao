#!/bin/bash

#1.获取行数
file='file.txt'
number=$(sed -n '$=' $file)
#2.

while :
do
	clear
	n=$[ RANDOM%number+1 ]
	sed -n "${n}p" $file
	sleep 1
done
