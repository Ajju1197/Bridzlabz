number=$((RANDOM%3))
salary=0
perHourCost=100
logHoursAsFullTime=8
logHoursAsPartTime=4
isFulltime=2
isParttime=1
isAbsent=0

  if [ $number == $isFulltime ]
  then
        salary=$((perHourCost*logHoursAsFullTime))
        echo "Employee Joined As Full-Time Job"
        echo "Income Is $salary"
  elif [ $number == $isParttime ]
  then
        salary=$((perHourCost*logHoursAsPartTime))
        echo "Employee Joined As Part-Time Job"
        echo "Income Is $salary"
  else
        echo "Employee Absent"
        echo "Income Is $salary"
  fi