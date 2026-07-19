
#!/bin/bash
#this is for and while loops

<<practice
for ((i=1; i<=5; i++)); 
do
mkdir "loopfile$i"
done
practice

<<task
$1 folder name
$2 start
$3 end
task

for((i=$2; i<=$3; i++));
do
	mkdir "$1$i"
done
