rcbTeams=("Abd" "Virat" "Chahal")
echo "**************ADD***************"
echo "Before Add ===> " ${rcbTeams[@]}
rcbTeams[3]="Simon"
echo "After Add ===> " ${rcbTeams[@]}
echo "**************UPDATE************"
echo "Before Update ===> " ${rcbTeams[@]}
rcbTeams[2]="Siraj"
echo "After Update ===> " ${rcbTeams[@]}
echo "**************DELETE************"
echo "Before Delete ===> " ${rcbTeams[@]}
unset 'rcbTeams[3]'
echo "After Delete ===> " ${rcbTeams[@]}
echo "**********Length Of An Array**********"
echo "Length/HeadCount Of An Array"
echo ${#rcbTeams[@]}
echo "*******Index No's Of An Array**********"
echo "Index No's Of An Array"
echo ${!rcbTeams[@]}
echo "****************************************"
rcbTeams=("Abd" "Virat" "Chahal")
           for item in ${rcbTeams[@]}
           do
               if [ $item == "Chahal" ]
               then
                   echo "$item Is a bowler of RCB"
               elif [ $item == "Abd" ]
               then
                   echo "$item Is a batsman of RCB"
               else
                   echo "$item Is a Captain of RCB"
               fi
           done