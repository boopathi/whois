#!/bin/bash

for i in `echo {a..z}`
do
	for j in `echo {a..z}`
	do
		test -n "$(whois $i$j.io | grep 'Not available')" && echo "$i$j.io"
	done
done
				
