#!/bin/bash

for i in {2..254}
do
	ping -c 1 172.40.91.$i &> /dev/null
	
	#判断$?的值
	if [ $? -eq 0 ];then
		echo "172.40.91.$i online"
		let online++
	else
		echo "172.40.91.$i Dowm"
		let down++
	fi
done
echo "Online - $online"
echo "Down - $down"

