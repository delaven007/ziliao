#!/bin/bash
for file in `ls /etc/*.conf`
do
	md5sum	$file >> md5log.txt
done
