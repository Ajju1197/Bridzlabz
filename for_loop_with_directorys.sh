
Algorithm :-
step 1 :-
        List only Java Files
        Example : a.java b.java c.java
        Done
step 2 :-
        find a 'Name' of that java-files
        Example : a.java ===> a
                  b.java ===> b
                  c.java ===> c
        Done
step 3 :-
        Create a folder with same name as a file-name
        Example : a.java ===> a/
                  b.java ===> b/
                  c.java ===> c/
        Done
step 4 :-
        copy a original file (a.java) & paste into a specific folder
        Example : -
        Done



solution :-for item in `ls *.java`
do
    fn=`echo $item | awk -F. '{ print $1 }'`
    if [ -d $fn ]
    then
        echo "Inside If Condition ..."
        rm -rf $fn
    fi
    mkdir $fn
    cp -r $item $fn
done