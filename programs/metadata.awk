BEGIN{FS="</h1>|</div>"} 
	/aramanızda/ {gsub(/<.?span>/,""); split($2, sayi, " "); split(FILENAME, arr, "."); if(sayi[2]=="seçtiğiniz") sayi[2]="0"} 
	/Bu sayfa en son/ {split($0,zaman,"<.?span>")} 
END{ if(zaman[2]==NULL) zaman[2]="!ILAN MEVCUT DEGILDIR!"} 
	/sayfa içerisinde/ {split($0,sayfa,/[.| ]/)} 
	{if (sayfa[11]==NULL) sayfa[11]=sayfa[14]=1}
END{print zaman[2]"|"sayfa[14]"/"sayfa[11]"|"sayi[2]"|"arr[1]}
