#!/bin/bash

echo "enter a number "
read n
m=$n
count=0
temp=0
for (( i=1 ; i<=n ; i++ ))
do
	mod=$(($n%$i))
	if [ $mod == 0 ]
	then 
		count=$(($count+1))
	fi
done

checking

function checking()
{
if [ $count == 2 ]
then
 	
	while [ $n -gt 0 ]
	do
		j=$(($n%10))
		temp=$(($(($temp*10))+$j))
		n=$n/10
	done
	if [ $temp == $m ]
	then 
		echo "prime and palindrome"
	else
		echo "prime but not palindrome"
	fi
else
	if [ $temp == $m ]
	then
		echo "not prime but palindrome"
	else
		echo "not prime and not palindrome"
	fi
fi
}
