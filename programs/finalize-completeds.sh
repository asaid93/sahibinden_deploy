
echo "$1 ${1}"
cat ${1}/* > ${1}.txt &&\
cat ${1}.txt | sort -u -t"|" -k1,1 |\
awk -F"|" 'BEGIN{OFS="|"} (NF ~ 12){$1=$1"|Daire"} {print}' | sort |\
awk -F"|" 'BEGIN{OFS="|"} {split($NF,arr,"-"); $NF=arr[1]"|"arr[2]"|"arr[3]} {print}' |\
awk -F"|" 'NF ~ 15 {print}' > ${1}-sort-NF-15.txt
