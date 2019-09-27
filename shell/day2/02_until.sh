#!/bin/bash
#把172.40.91.10-15内不在线的IP输出来
x=10
until [ $x -gt 15 ]
do
	ping -c 2 172.40.91.$x &> /dev/null
	if [ $? -ne 0 ];then
		echo "176.136.10.$x"
	fi
		let x++ 
done




