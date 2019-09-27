#!/bin/bash

read -p "输入用户名:" name
[ -z $name ] && exit 
sudo useradd $name
