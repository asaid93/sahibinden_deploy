#!/bin/bash
met=$3
echo $met
awk -v var="$met" -f /sahibinden/programs/extraction.awk $1 |\
	awk -v FS="|" -v ORS="" '($0~/^[0-9]{9}$/) {print "\n"$0} ($0!~/^[0-9]{9}$/){print FS$0}' > $2
