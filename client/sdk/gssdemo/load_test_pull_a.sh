#! /bin/sh

for ((i=1; i<=$2; i++))  
do  
    user=$[$1]
    ./gssdemo -d 127.0.0.1:6001 -s 127.0.0.1:6000 -u $user -t pull -b &
    echo "user $user, count $i" 
    sleep 0.1 
done

