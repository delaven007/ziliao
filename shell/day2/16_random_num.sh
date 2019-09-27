#!/bin/bash
key='1234567890qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM_'
length=${#key}
pass=''
for i in {1..8}
do
	pass=$pass${key:$[RANDOM%length]:1}
done
	echo $pass
