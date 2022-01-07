declare -A movies

movies[english]="spiderman"
movies[telugu]="bahubali"
movies[tamil]="master"
movies[hindi]="kick"

echo "**************ADD***************"
echo "Before Add ===> " ${movies[@]}
movies[malayalam]="kurup"
echo "After Add ===> " ${movies[@]}
echo "**************UPDATE************"
echo "Before Update ===> " ${movies[@]}
movies[telugu]="arjunreddy"
echo "After Update ===> " ${movies[@]}
echo "**************DELETE************"
echo "Before Delete ===> " ${movies[@]}
unset movies[english]
echo "After Delete ===> " ${movies[@]}
echo "**********Length Of An Dictionary**********"
echo "Length/HeadCount Of An Dictionary"
echo ${#movies[@]}
echo "*******Only Keys In A Dictionary**********"
echo "Only Keys In A Dictionary"
echo ${!movies[@]}
echo "*******"

declare -A miTeams
miTeams[bowl]="bumrah"
miTeams[bat]="suryakumar"
miTeams[captain]="rohit"
