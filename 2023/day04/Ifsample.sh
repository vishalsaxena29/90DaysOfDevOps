#!/bin/bash

echo -e "Condition 1 checking number is odd or even" 
echo -e "Condition 2 checking file is present in current directory or not"
echo -e "Condition 3 comparing 2 numbers"

echo "*********************************************************************"

echo "Condition 1"

echo -e "Entered number to check even or odd is :- $1"

if [ $(( $1 % 2 )) -eq 0 ]
then
  echo "Number is even"
else
  echo "Number is odd"
fi

echo "*********************************************************************"

echo -e "Condition 2"

path=$(pwd)

echo -e "Current directory which you are in right now is: $path "

echo -e "This is the parameter $2"

if [ -f $2 ]
then
 echo -e "File exist in the path."
else
 echo -e "File does not exist in the path."
fi	

echo "*********************************************************************"

echo "Condition 3"

echo -e "This is the first number parameter $3"
echo -e "This is the second number parameter $4"

if [ $3 -gt $4 ]
then
  echo "$3 is greater than $4"
else
  echo "$4 is greater than $3"
fi    
echo "*********************************************************************"
