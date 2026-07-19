#!/bin/bash

<< disclaimer
this is to check loyalty of jethalal
disclaimer

function is_loyal() {
read -p "enter the girl:" girl
read -p "enter the $1 salary:" salary

if [[ $girl == "daya bhabhi" ]];
then 
	echo "$1 is loyal"
elif [[ $salary -ge 10,000 ]];
then
	echo "$1 is loyal and rich"
else
	echo "$1 is not loyal"
fi
}
is_loyal "tom"

