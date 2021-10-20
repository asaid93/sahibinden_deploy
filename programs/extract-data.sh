mkdir -p $1
cd kiralik
ls *.html | while read -r city
do 
	METADATA=$(awk -f $2/metadata.awk $city)
	echo $METADATA
	echo "$METADATA" >> /sahibinden/programs/meta.txt
	ilan_sayi=$(awk 'BEGIN{split(ARGV[1],arr,"|"); print arr[3]}' "$METADATA")
	sleep 0.1
	if [[ $city != *[\?]* ]] && [[ $ilan_sayi -lt 20 ]]
	then 
		rm -rf $city
		echo "script calistirilmadi ve dosya silindi: "$city
	else
		echo "script baslatiliyor"
		sh $2/sahibinden_awk_v6.sh $city $1/$city "$METADATA"
		echo "script bitirildi"
	fi
done
