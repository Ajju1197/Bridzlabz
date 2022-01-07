for item in *
do 
    folder= echo $item | awk -F. '{ print $1 }'
    direc= echo $item | awk -F. '{ print $2 }'
  if [ -d $folder ]
  then
  echo "In Sider Remove the Folder"
     rm -rf $folder
  fi
     mkdir -p $folder/$direc
     mv  $item ./$folder/$direc
done
Algoritham:
step1:
	List all files in the Stage1_review  directory
	Example:Add.java Sub.js Multiply.py Division.cs
step2:
	find name of the files and their extension seperately
	Example:
           Add.java ===> Add
           Division.cs ===> Division
           Multiply.py ===> Multiply
           Sub.js===>Sub
step3: 
	create a directory and subdirectory with filename as directory 
	and extension as subdirectory.
	Example: 
           Add.java ===> Add/java
           Division.cs ===> Division/cs
           Multiply.py ===> Multiply/py
           Sub.js===>Sub/js
step 4: 
	 copy a existing files & paste into a specific folder
	  Example: Add.java ===> Add/java/Add.java
             Division.cs ===> Division/cs/Division.cs
             Multiply.py ===> Multiply/py/Multiply.py
             Sub.js===>Sub/js/Sub.js