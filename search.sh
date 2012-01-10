#!/bin/bash

for i in `echo {a..z}`
do
	for j in `echo {a..z}`
	do	
		for k in `echo {a..z}`
		do
			#echo -n "$i$j$k.io"
			#whois "$i$j$k.io" | grep 'Not available'
			test -n "$(whois $i$j$k.io | grep 'Not available')" && echo "$i$j$k.io"
			#then
			#	echo $i$j$k.io
			#fi
		done
	done
done
				
