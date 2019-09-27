#!/bin/bash
read -p "第一个数字:" n1
read -p "操作符(+|-):" op
read -p "第二个数字:" n2

sumx(){
	echo $n1+$n2= $(($n1+$n2))
}
subx(){
	
	echo $n1-$n2=$[$n1-$n2]
}





case $op in
"+")
	sumx
	;;
"-")
	subx
	;;
*)
	echo "Invalid"
	;;
esac

