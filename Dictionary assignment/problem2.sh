#!/bin/bash -x

for i in seq {1...50}
	do
	month=$(( $((RANDOM%12)) + 1 ))
	year[month]+=" $i "
	done
for i in seq {1...12}                                                                                                                                                       do
	do
		echo "People having birthday in same month $i is" ${year[$i]}
	done
