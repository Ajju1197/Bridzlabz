read -p "Enter Your Firstname : " fn
read -p "Enter Your Lastname : " ln

function fullname() {
        echo "My Full-Name Is $1$2"

}


output="$( fullname $fn $ln )"
echo "Answer =======>>>> "$output