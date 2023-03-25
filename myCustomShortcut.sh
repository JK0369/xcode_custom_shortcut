#!/bin/bash

arr=()

while read line || [[ -n "$line" ]]; do
    arr+=("$line")
done < /dev/stdin

# Sort the array
# sorted_arr=($(printf '%s\n' "${arr[@]}" | sort))

arr_length=${#arr[@]}

# Sort the array manually
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

for item in "${arr[@]}"
do
    echo "$item"
    # printf '%s ' "${sorted_line[@]}"
done