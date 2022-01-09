result=0

read -p "Enter a value   --> " a
read -p "Enter b value ----> " b
read -p "Enter b value ----> " c

r1=$((a + b * c))

r2=$((a * b + c))

r3=$((c + a / b))

r4=$((a % b + c))

declare -A results
results[c1]=$r1
results[c2]=$r2
results[c3]=$r3
results[c4]=$r4

echo "<========storing all computation values into dictionary======>"
echo "Dictionary Elements ===> " ${results[@]}

echo "Creating an array"
resultarr=()
count=0
for i in ${results[@]}
do 
	resultarr[count]=$i
	count=$((count+1))
	
done

echo ${resultarr[@]}

echo "sort the results in descending order"

for((i=0; i<${#resultarr[@]}; i++))
do
	for((j=0; j< ${#resultarr[@]}; j++))
	do
          if [[ ${resultarr[$j]} -lt  ${resultarr[$i]} ]]
          then
        	tmp=${resultarr[$i]}
                resultarr[$i]=${resultarr[$j]}
                resultarr[$j]=${tmp}
          fi
    done
done
for desc in "${resultarr[@]}"
do
    echo "$desc"
done

echo "sort the result in Ascending order"

for (( i=0 ; i < ${#resultarr[@]}; i++ )) 
do
    for (( j=0 ; j < ${#resultarr[@]}; j++ )) 
    do
      if [[ ${resultarr[$j]} -gt  ${resultarr[$i]} ]]
      then
        tmp=${resultarr[$i]}
        resultarr[$i]=${resultarr[$j]}
        resultarr[$j]=${tmp}
      fi
    done
done

for asc in "${resultarr[@]}"
do
    echo "$asc"
done
