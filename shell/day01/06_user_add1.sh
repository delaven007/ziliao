#!/bin/bash

read -p "请输入用户:" username
sudo useradd $username

echo "$username创建成功"

