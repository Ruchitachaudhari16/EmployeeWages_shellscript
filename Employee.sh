echo "Welcome to Employee wage Computation Program"

isPresent=1;

randomCheck=$((RANDOM%2));

if [ $isPresent -eq $randomCheck ];
then echo "Employee is Present";
else  echo "Employee is Abscent";
fi
