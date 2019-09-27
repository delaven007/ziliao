#!/bin/bash

user="root"
passwoed="123456"
dbname="mysql"
date=$(date +%Y%m%d)
#！和-d之间有空格
[ ! -d /home/tarena/backup ] && mkdir /home/tarena/backup

mysqldump -u "$user" -p"$password" "$dbname" > /home/tarena/backup/"$dbname".sql
