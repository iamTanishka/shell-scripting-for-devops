
#!/bin/bash

num=0
while [ $num -le 10 ]
do
	if [ $((num%2)) -eq 0 ]; 
then
	echo "$num is even"
else
	echo "$num is odd"
fi
	((num++))
done
