#!/bin/sh
read fname
if [ -e $fname ]; then
    cd "$fname"
else
    mkdir "$fname" && cd "$fname"
fi

for i in 0 1 2 3 4
do
	touch "file${i}.txt"
	mkdir "file${i}"
	ln -s "../../file${i}.txt" "file${i}/file${i}.txt"
done
