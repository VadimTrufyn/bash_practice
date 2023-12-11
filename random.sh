#!bin/bash
echo "Enter you name"
read name 
echo "Enter your age"
read age

agex=(($age+$RANDOM%15))
echo "wait 5 second"
for i, i = 5, i--
do 
    echo "$i"
done
echo "You will become rich at $agex years"
