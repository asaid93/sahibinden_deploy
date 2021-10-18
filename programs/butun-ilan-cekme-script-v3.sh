#!/bin/bash

wget_1000_function () 
{

wget \
        --limit-rate=100k --user-agent="Mozilla/5.0" \
        --reject-regex 'arama|sozlesmeler|static|reklam|ilan|kategori|\
        doping-tanitim|kurumsal|guvenli-alisverisin-ipuclari|projeler|\
        destek|daireler|search|emlak|for|search-map|emlak-konut|viewType|\
        date|address|m2-brut|bm|pagingSize=20|sorting|daire|mustakil-ev|\
        residence|villa|yazlik|ciftlik-evi|kosk-konak|date' \
        -R "sahibinden" -R "insaat*" \
        --accept-regex 'pagingSize=50' \
        --waitretry=5 \
        --tries=4 \
        --timeout=20 \
        -nH -np -m -p -E -k -l 4 -r \
        --input-file=$1/$2

}

wget_1000_2000_function () 
{

wget \
        --limit-rate=100k --user-agent="Mozilla/5.0" \
        --reject-regex 'arama|sozlesmeler|static|reklam|ilan|kategori|\
        doping-tanitim|kurumsal|guvenli-alisverisin-ipuclari|projeler|\
        destek|daireler|search|emlak|for|search-map|emlak-konut|viewType|\
        date|address|m2-brut|bm|pagingSize=20|daire|mustakil-ev|\
        residence|villa|yazlik|ciftlik-evi|kosk-konak|daire' \
        -R "sahibinden" -R "insaat*" \
        --accept-regex 'pagingSize=50' \
        --waitretry=5 \
        --tries=4 \
        --timeout=30 \
        -nH -np -m -p -E -k -l 4 -r \
        --input-file=$1/$2

}
path_to_list=/sahibinden/url-lists-to-wget/
path_to_download=/sahibinden/downloads/$1
path_to_completed=/sahibinden/completed/$1
path_to_programs=/sahibinden/programs

#mkdir $path_to_download && cd $path_to_download
#mkdir ankara && cd ankara
#list=url-added-ankara-ilce.txt
#wget_1000_function $path_to_list $list
#echo "ankara bitti"
#sh $path_to_programs/extract-data.sh $path_to_completed $path_to_programs &
#sleep 35m
#
#mkdir antalya && cd antalya
#list=url-added-antalya-ilce.txt
#wget_1000_function $path_to_list $list
#echo "antalya bitti"
#cd ..
#sleep 35m
#
#mkdir izmir && cd izmir
#list=url-added-izmir-ilce.txt
#wget_1000_function $path_to_list $list
#echo "izmir bitti"
#cd ..
#sleep 35m
#
#mkdir mugla && cd mugla
#list=url-added-mugla-ilce.txt
#wget_1000_function $path_to_list $list
#echo "mugla finish"
#cd ..
#sleep 35m
#
#mkdir ikibinlikler && cd ikibinlikler
#list=url-added-1000-2000-arasi-il-ilceler.txt
#wget_1000_2000_function $path_to_list $list
#echo "2000 finish"
#cd ..
#sleep 45m
#
#mkdir istanbul-part-1 && cd istanbul-part-1
#list=url-added-1000den-kucuk-ilceler-istanbul-PART-1.txt
#wget_1000_function $path_to_list $list
#echo "ist 1 finish"
#cd ..
#sleep 35m
#
#mkdir istanbul-part-2 && cd istanbul-part-2
#list=url-added-1000den-kucuk-ilceler-istanbul-PART-2.txt
#wget_1000_function $path_to_list $list
#echo "ist 2 finish"
#cd ..
#sleep 45m
#
#mkdir iller-part-1 && iller-part-1
#list=url-added-1000den-kucuk-iller-PART-1.txt
#wget_1000_function $path_to_list $list
#echo "1000 1 finish"
#cd ..
#sleep 35m
#
#mkdir iller-part-2 && iller-part-2
#list=url-added-1000den-kucuk-iller-PART-2.txt
#wget_1000_function $path_to_list $list
#echo "1000 2 finish"
#cd ..
#sleep 35m
#
#mkdir iller-part-3 && iller-part-3
#list=url-added-1000den-kucuk-iller-PART-3.txt
#wget_1000_function $path_to_list $list
#echo "1000 3 finish"
#cd ..
#sleep 45m

mkdir $path_to_download && cd $path_to_download
mkdir mugla-bodrum && cd mugla-bodrum
list=url-added-mugla-bodrum-mahalle.txt
wget_1000_function $path_to_list $list
echo "mugla-bodrum bitti"
sh $path_to_programs/extract-data.sh $path_to_completed $path_to_programs &
#sleep 35m

#mkdir mugla-bodrum && cd mugla-bodrum
#wget --limit-rate=200k --reject-regex \
#'toplu|guvenli|cikis|favicon|mobil|neden|magaza|site|\
#param|arama|sozlesmeler|static|reklam|ilan|kategori|\
#doping-tanitim|kurumsal|guvenli-alisverisin-ipuclari|\
#projeler|destek|daireler|search|emlak|for|search-map|\
#emlak-konut|viewType|sorting|pagingSize=20' \
#--accept-regex 'pagingSize=50' -m -k -l 4 -r https://www.sahibinden.com/kiralik-daire/mugla-bodrum
#echo "mugla-bodrum bitti"
#cd ..
#
# cd $path_to_list
# while read list
# do
	# wget_1000_function $path_to_list $list
	# sleep 31m
# done
