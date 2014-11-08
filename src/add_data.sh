#!/bin/bash

#echo "First argument - " $1 
#echo "Second argument - " $2

DRUG=$(python assign_drug.py $2)

echo "cp $2 ./data/$1/$1-$DRUG.dat"
