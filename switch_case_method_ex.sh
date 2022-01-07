read -p "Enter Your Favourite Player In IPL " player

case $player in
   dhoni)
      echo "He Is From CSK"
      ;;
   kohli)
      echo "He Is From RCB"
      ;;
   rohit)
      echo "He Is From MI"
      ;;
   williamson)
      echo "He Is From SRH"
      ;;
   *)
     echo "Invalid Input :( Please check again ..."
     ;;
esac