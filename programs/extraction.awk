/<tr data-id="[0-9]{9}"$/ {dataid=NR;title=dataid+3}(NR==dataid){sub(/^.*="/,""); sub(/".*$/,""); print; i++; next}
(NR==title){gsub(/^.*title="/,""); gsub(/">$/,""); gsub(/&#39;/,"\'"); gsub(/&quot;/,"\""); gsub(/&#173;/,""); gsub(/\|/,"!"); print; next}
/    <td class="searchResultsTagAttributeValue">/ {emlaktip=NR+1}(NR==emlaktip){gsub(/^ +/,""); gsub(/<.td>$/,""); print; next}
/<td class="searchResultsAttributeValue">/ {z=NR+1}(NR==z){sub(/^ +/,""); gsub(/<.td>/,""); print; next}
/<td class="searchResultsPriceValue">/ {t=NR+1}(NR==t){sub(/^.+<div> /,""); sub(/ TL.*$/,""); print;next}
/<td class="searchResultsDateValue">/ {k=NR+1;l=NR+3}(NR==k || NR==l){sub(/^ +/,""); gsub(/<.?span>/,""); print; next}
/<td class="searchResultsLocationValue">/ {m=NR+1}(NR==m){sub(/^ +/,""); sub(/<br.>/,"-"); sub(/<.td>/,""); \
	split(var, outsource, /[||?|/]/); print $0"|"outsource[1]"|"outsource[2]"/"outsource[3]"|"(outsource[2]-1)*50+i"/"outsource[4]"|"outsource[5]; next}
