#!/usr/bin/env bash
IFS=$(echo -en "\n\b")
echo -en $IFS
for FileName in *.osz
do
	echo $FileName
#Trim filenames to create folders
FolderName=(${FileName//.osz/ })
echo $FolderName
mkdir $FolderName
mkdir $FolderName/backup
unzip -d $FolderName $FileName
mv $FileName $FolderName/backup


#	mkdir $FolderName
done

