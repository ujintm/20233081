#!/bin/sh
read fname
if [ -e $fname ]; then
	cd "$fname"
else
	mkdir "$fname" && cd "$fname"
fi

for i in 1 2 3 4 5
do
	touch "file${i}.txt"
done

ls

tar -cf "${fname}.tar" *.txt

