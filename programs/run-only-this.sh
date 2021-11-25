#!/bin/bash
day=$(date --date="1 day" +"%Y%m%d")
mkdir -p /sahibinden/log/$day
sh /sahibinden/programs/butun-ilan-cekme-script-v3.sh $day >> /sahibinden/log/$day/log.log 2>&1 &
# --date="1 day"
