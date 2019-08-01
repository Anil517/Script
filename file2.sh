#!/bin/bash

IFS=" "
input=`cat user.txt`
echo $input

count=`echo $input |wc -l`

echo $count
i=1

while [ $i -le $count ]
do
   echo line Number $i
   users=`echo $input | awk -v n="$i" -F "," 'FNR == n{print $1}'`
   echo $users
  # sudo adduser --quiet --disabled-password "$users"
   password=`echo $input |awk -v i="$i" -F "," 'FNR == i {print $2}'`
   echo $password
  # sudo passwd "$users"

     i=$(( $i + 1 ))

done
#multiple line comment
: '
contents of  user.txt file 
anil123,anil@123
anil1234,anil@1234
anil12345,anil@12345
'

