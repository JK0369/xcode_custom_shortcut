#!/bin/bash

arr=()

# eof 까지 파일 입력
while read line || [[ -n "$line" ]]; do
    arr+=("$line")
done < /dev/stdin

# 정렬
arr_length=${#arr[@]}
for (( i=0; i<${arr_length}-1; i++ ))
do
    for (( j=$i+1; j<${arr_length}; j++ ))
    do
        if [[ "${arr[$i]}" > "${arr[$j]}" ]]; then
            temp=${arr[$i]}
            arr[$i]=${arr[$j]}
            arr[$j]=$temp
        fi
    done
done

# 출력
for item in "${arr[@]}"
do
    echo "$item"
done