#!/bin/bash
for i in `ls *.txt`
do
	name=${i%.txt}
	mv $i $name.doc
done


