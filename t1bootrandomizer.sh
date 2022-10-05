#!/usr/bin/env bash

currentDate=`date`
echo $currentDate " | AutoBoot Started " >> log.txt;
function getlastbootvideo
{

cd "/home/deck/homebrew/t1bootrandomizer/";
read -r lastboot < lastboot.txt;
echo "Last Bootvideo was : " $lastboot;

}
function autobootvideo
{
ls |sort -R |tail -1 |while read file; do	
	if [[ $file == *.webm ]];
	then
		echo $file chosen;		
		if [ $file != $lastboot ];
		then
			cp $file /home/deck/.local/share/Steam/steamui/overrides/movies/deck_startup.webm ;
			echo $file > lastboot.txt;
			echo $file "is not the same as "$lastboot "so were changing it to "$file;
			echo $file "is not the same as "$lastboot "so were changing it to "$file >> log.txt
		else		
			echo $file "and " $lastboot "are the same!";
			autobootvideo;
		fi		
	else
		echo $file "is not a .webm file";
		autobootvideo;
	fi
done
}
getlastbootvideo;
autobootvideo;
