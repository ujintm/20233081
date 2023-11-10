#!/bin/sh

read name number

if [ ! -e "DB.txt" ]; then
	touch "DB.txt"
fi

echo "${name}, ${number}" >> DB.txt
