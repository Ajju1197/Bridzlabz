for item in `ls`
do
    extensionName=`echo $item | awk -F. '{ print $2 }'`
    case $extensionName in
      java)
          echo "$item is a JAVA File"
      ;;
      py)
          echo "$item is a PYTHON File"
      ;;
      sh)
          echo "$item is a SHELLSCRIPT File"
      ;;
      *)
      echo "Something went wrong ..."
      ;;
    esac
done