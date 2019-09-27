#!/bin/bash

game=("石头""剪刀""布")
computer=${game[$[RANDOM%3]]}
echo $computer
echo "+---------------------------+"
echo "+		1 石头		   "
echo "+		2 剪刀		   "
echo "+		3 布		   "
echo "+---------------------------+"
read -p "请出拳(1/2/3):" you

case $you in
1)
	if [[ $computer == "石头" ]];then
		echo "平局"
	elif [[ $computer == "剪刀" ]];then
		echo "你赢"
	else 
		echo "计算机赢"
	fi
	;;
2)
	if [[ $computer == "石头" ]];then
		echo "计算机赢"
	elif [[ $computer == "剪刀" ]];then
		echo "平局"
	else 
		echo "你赢"
	fi
	;;
3)	
	if [[ $computer == "石头" ]];then
		echo "你赢"
	elif [[ $computer == "剪刀" ]];then
		echo "计算机赢"
	else 
		echo "平局"
	fi
	;;
*)
	echo "请按规则玩游戏"
	;;
esac



