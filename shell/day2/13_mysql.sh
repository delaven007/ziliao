#!/bin/bash
n=0
while :
do
	sleep 2
	count=`mysqladmin -uroot -p123456 status | awk "{print $4}"`
	echo "`data +%Y-%m-%d` 并发数为$count"
	let  n++
	if [ $n -gt 3 ];then
		echo "Bye"
		exit
	fi
done












