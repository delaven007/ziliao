#!/bin/bash
for i in `head -10 /etc/passwd`
do
	echo ${i%%:*}	
done

