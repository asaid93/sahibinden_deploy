day=$(date +"%Y%m%d")
mkdir /sahibinden/log/$day
sh /sahibinden/programs/butun-ilan-cekme-script-v3.sh $day >> /sahibinden/log/$day/log.log 2>&1 &
