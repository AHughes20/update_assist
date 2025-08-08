#!/bin/bash

last_update=$(dnf history | grep -i "update" | awk '{print $5}' | head -2 | grep -v "repositories") 
current_ts=$(date +%s)
last_update_ts=$(date -d "$last_update" +%s)

days_diff=$(( (current_ts - last_update_ts) / 86400 ))

if (( days_diff > 4 )); then
	echo "please update"
else
	echo "test goodbye"
	exit 1
fi

