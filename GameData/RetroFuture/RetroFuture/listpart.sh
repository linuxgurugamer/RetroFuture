#!/bin/bash

f=`find . -name \*cfg -print`
echo "file, title, name"
for i in $f; do
	name=`grep -m 1 'name =' $i | cut -f2 -d'='`
	title=`grep title $i | cut -f2 -d'='`
	
	[ "$title" != "" ] && echo "$i, $name, $title"
done

