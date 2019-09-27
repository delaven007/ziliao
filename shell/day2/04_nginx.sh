#!/bin/bash

read -p "操作(start|stop|restart):" work
case $work in
"start")
	sudo /etc/init.d/nginx start
	;;
"stop")
	sudo /etc/init.d/nginx stop
	;;
"restart")
	sudo /etc/init.d/nginx restart
	;;
*)
	echo "Invalid Please input start|stop|restart"
	;;
esac



