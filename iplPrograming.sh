position=0
MATCH_PLAYED=14
win=0
lose=0
points=0
nrr=""
echo "Please Select Your Favourite Team"
read teamName

function ipl() {
       lose=$((MATCH_PLAYED-$2))
       points=$(($2*2))
       echo "Team Position : $1"
       echo "Team Name : $teamName"
       echo "Match Faced : $MATCH_PLAYED"
       echo "Won : $2 , Lost : $lose"
       echo "Run-rate : $3"
       echo "Points : $points"
}


     if [ $teamName == 'MI' ]
     then
         position=5
     elif [ $teamName == 'RCB' ]
     then
         position=3
     elif [ $teamName == 'CSK' ]
     then
         position=2
     else
         echo "Something Went Wrong :("
     fi

case $position in
   2)
      win=9
      nrr="+0.455"
      ipl $position $win $nrr
      ;;
   3)
      win=9
      nrr="-0.140"
      ipl $position $win $nrr
      ;;
   5)
      win=7
      nrr="+0.116"
      ipl $position $win $nrr
      ;;
   *)

     ;;
esac