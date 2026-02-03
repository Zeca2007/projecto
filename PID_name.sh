#!/bin/bash
# 
#set -x

#Ps_file=$( ps -fe )

while read -r PID_line 
	do
                echo "$PID_line"
		User_ID=$( echo " $PID_line"  | tr -s ' ' | cut -d " " -f2 )
		
		if  [ "$User_ID" = "jose_" ]; then
			#echo "1- $PID_line \n"
			#echo "2- " 
			echo " -$PID_line"  | tr -s ' ' | cut -d " " -f4
			echo " -$PID_line"  | tr -s ' ' | cut -d " " -f2
                fi


	#Num_PID=$( cat "$PID_line"   | grep Jose_ | tr -s ' ' | cut -d " " -f3)
	#User_ID=$( cat "$PID_line"  | grep 619 | tr -s ' ' | cut -d " " -f2)

	#echo  "$Num_PID" \n
	#echo  "$User_ID"

done < ficheiro.txt




