#!/bin/bash
set -x
dir="/c/Users/jose_/Git/scripts"
cd $dir
data=`date "+%d-%m-%Y_%H_%M_%S"`
archivename="archive_$data"
#echo " $archivename "
tar -cvf  $archivename  *.sh  
RC=$?
if [ $RC -eq 0 ]; then
	mv $archivename $dir/backup/
	cd $dir/backup/
	if [ -f "$archivename" ]; then
		echo " ficheiro TAR criado directorio Backup "
	else 
		echo " ficheiro TAR nao foi criado "

	fi

else 
	echo "erro na compatacao do ficheiro"

fi

Lista_TAR=`tar -tf $archivename`
Lista="List"
Lista_name="$archivename$Lista"
echo $Lista_TAR > $Lista_name
#
#find /tmp -type f -mtime +15 -exec rm -f {} \; -ls


