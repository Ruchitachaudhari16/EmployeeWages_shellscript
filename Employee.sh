isPartTime=1;
isFullTime=2;
empRatePerHr=20;
randomCheck=$((RANDOM%3));

if [ $isFullTime -eq $randomCheck ]
then
    empHrs=8;

elif [ $isPartTime -eq $randomCheck ]
then
    empHrs=4;

salary=$(( $empHrs*$empRatePerHr ));
echo $salary;

else 
     empHrs=0;
echo $salary;

fi
