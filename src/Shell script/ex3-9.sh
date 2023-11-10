#!/bin/sh

read search

result=$(grep -i "^${search}," DB.txt)
if [ -n "$result" ]; then
	echo "${result}"
fi
