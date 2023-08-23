linesToPrint=$(cat ~/.scriptFiles/motivationLines)
modifiedString=$(echo "$linesToPrint" | tr " " "_" | tr "\n" ", ")
IFS=', ' read -r -a array <<< "$modifiedString"
size=${#array[@]}
index=$(($RANDOM % $size))
echo ${array[$index]} | tr "_" " "
