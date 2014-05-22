myip="$1";
filetxt=$2;

echo "" >> "file_filtrati/"$filetxt"_output.txt";
echo "" >> "file_filtrati/"$filetxt"_output.txt";
echo "" >> "file_filtrati/"$filetxt"_output.txt";
echo "############# MY IP: $myip ###############" >> "file_filtrati/"$filetxt"_output.txt";
echo "" >> "file_filtrati/"$filetxt"_output.txt";
echo "" >> "file_filtrati/"$filetxt"_output.txt";

while read line
do

if [ -n "`echo $line | grep "Src: $myip"`" ]; then
    echo $line | grep "Dst:" | cut  -d ":" -f3 >> "file_filtrati/"$filetxt"_output.txt";
fi

done < "$filetxt.txt";
