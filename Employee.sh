isPartTime=1;
isFullTime=2;
MAX_HRS_IN_MONTH=10;
empRatePerHr=100;
numWorkingDays=20;
#Variables
totalEmpHr=100;
totalWorkingDays=20;

while [[ $totalEmpHr -lt $MAX_HRS_IN_MONTH && $totalWorkingDays -lt $numWorkingdays ]]

do
 (( totalWorkingDays++ ))
     empCheck=$((RANDOM%3));

case $empCheck in
       $isFullTime)
         empHrs=8
         ;;
        $isPartTime)
           empHrs=4
          ;;
          *)
       empHrs=0
           ;;
esac
totalEmpHrs=$(($totalEmpHr+$empHrs))
echo "Total Emp hrs:$totalEmpHrs";
done

totalSalary=$(( $totalSalary+$empRatePerHr ));
echo "Salary is :$totalSalary";
