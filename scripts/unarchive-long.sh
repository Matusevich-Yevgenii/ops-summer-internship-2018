#!/usr/bin/env bash

file=/var/log/nginx/old.log
all_codes=()

for code in $( grep -o 'status=[0-9]*' ${file} | grep -o '[0-9]*' | grep -v 200 )
do
    if [[ -z ${all_codes["$code"]} ]]
    then
        all_codes+=( ["$code"]=1 )
    else
        all_codes["$code"]=$(( ${all_codes["$code"]} + 1 ))
    fi
done

max=0
for code in ${!all_codes[@]}
do
    if [[ $max -lt ${all_codes["$code"]} ]]
    then
        max=${all_codes["$code"]}
        a=$code
    fi
done

b=$( grep 'remote_addr=8.8.8.8' ${file} | wc -l )
c=$( curl -Is hint.macpaw.io | grep ETag | cut -d \" -f2 | cut -c -2 )

unzip -P $(( $a + $b + $c )) /tmp/additional.zip 
