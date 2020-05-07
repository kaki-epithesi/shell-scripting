#!/bin/bash

if (( $1 > $2 & $1 > $3 ))
then
	echo "var1 is greatest"
elif (( $1 == $2 || $3 == $2 || $1 == $3 ))
then
	echo "any two or all three are same"
else
	echo "no condtion"
fi
