mkdir $1
cd kiralik
ls *.html | while read -r city; do METADATA=$(awk -f $2/metadata.awk $city) ; echo $METADATA ; sh $2/sahibinden_awk_v6.sh $city $1/$city "$METADATA"; done
