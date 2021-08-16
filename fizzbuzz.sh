#! /bin/bash -x
for ((i=0;i<=101;i++))
do
if [ $((i%3)) -eq 0 ] && [ $((i % 5)) -eq 0 ]
then
 echo "$i multiple of 3 and 5"
elif [ $((i % 3)) -eq 0 ]
then
 echo "fizz"
elif [ $((i % 5)) -eq 0 ]
then
    echo "buzz"
else
 echo $i
fi
done

