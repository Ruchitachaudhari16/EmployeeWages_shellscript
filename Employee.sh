echo "Welcome to Employee wage Computation Program"

isPresent=1;

randomCheck=$((RANDOM%2));

if [ $isPresent -eq $randomCheck ];
then 

     empRatePerHr=20;

     empHrs=8;

      salary=$(($empHrs*$empRatePerHr));
        echo $salary;
else
      echo $salary =0;
fi

