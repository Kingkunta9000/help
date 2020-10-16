#!/bin/bash
#
# Purpose - Check logs for known bad guys 
#
#  ------- Set the path where the alerts are going -------
logfile=$HOME/Desktop/loganalysis/access1.log
#
#  ------- Ask user for the bad guy file ----------
#
echo -e "Enter name of bad guy file"
read name
echo "Bad Guy File is $name"
#
# -------- Search for hits -------------------------
cat $name |while read ipaddress
 do
   echo "Potential ISSUE with $ipaddress"
   grep $ipaddress $logfile
 done

