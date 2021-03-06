#!/bin/bash

porta=$1;
filetxt=$2;

is_first=1;
read old_line < "$filetxt.txt";

echo " " >> "file_filtrati/"$filetxt"_trovati.txt"; 
echo " " >> "file_filtrati/"$filetxt"_trovati.txt"; 
echo " " >> "file_filtrati/"$filetxt"_trovati.txt"; 
echo "################### PORTA $porta #########################" >> "file_filtrati/"$filetxt"_trovati.txt";   
echo " " >> "file_filtrati/"$filetxt"_trovati.txt"; 
echo " " >> "file_filtrati/"$filetxt"_trovati.txt"; 

while read line
do

if [ $is_first -ne 1 ]; then 
    is_ok=`echo $line | grep "$porta"`;
    if [ -n "$is_ok" ]; then
        echo $old_line >> "file_filtrati/"$filetxt"_trovati.txt";
    fi
        
    old_line=$line;

else     
    old_line=$line;
    is_first=0;
fi

done < "$filetxt.txt";
