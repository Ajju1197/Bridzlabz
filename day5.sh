echo "Enter Your Arithmetic Operation"
echo "1.Add 2.Sub 3.Multiply 4.Divison"
read operation
read -p "Enter Your X value here : " x
read -p "Enter Your Y value here : " y

order=0
       function errorMessage() {
                echo "Your Given Input $1 Is Invalid :("
       }
       function arithmeticOperations() {
                output=0
                case $1 in
                     4)
                        output=$(($2/$3))
                     ;;
                     3)
                        output=$(($2*$3))
                     ;;
                     2)
                        output=$(($2-$3))
                     ;;
                     1)
                        output=$(($2+$3))
                     ;;
                     *)
     
                     ;;
                esac
           echo "Answer : $output"
       }

       if [ $operation == "Add" ]
       then
           order=1
           arithmeticOperations $order $x $y
       elif [ $operation == "Sub" ]
       then
           order=2
           arithmeticOperations $order $x $y
       elif [ $operation == "Multiply" ]
       then
           order=3
           arithmeticOperations $order $x $y
       elif [ $operation == "Divison" ]
       then
           order=4
           arithmeticOperations $order $x $y
       else
           errorMessage $operation
       fi
