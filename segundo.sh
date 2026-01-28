#!/bin/bash
num=$1
if [ $num -gt 20 ]; then
	echo " Number inserted is greater than 20 "
	RC=$?
else 
	echo " Number inserted is 20 or less"
	RC=$?
fi
if [ $RC -gt 0 ] ; then 
	echo " we have a n error : $RC "
else
	echo " no error found "
fi 
