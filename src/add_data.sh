#!/bin/bash

DRUG=$(python assign_drug.py $2)
DEST="../data/$1/$1-$DRUG.dat"
mkdir -p ../data/$1

cp $2 $DEST

# Add and commit to git repo

MSG="Acquired $DEST"
git add $DEST
git commit -m "'$MSG'"
echo "Finished gracefully with adding $DEST"
