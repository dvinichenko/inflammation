#!/bin/bash

DRUG=$(python src/assign_drug.py $2)
CURR_DATE=$(date +%Y-%m-%d)
DEST_DIR="$3/data/$CURR_DATE"
TARGET_FNAME="$CURR_DATE-$DRUG.dat"

mkdir -p $DEST_DIR
mv $2 $DEST_DIR/$TARGET_FNAME

# Add and commit to git repo

MSG="Acquired $TARGET_FNAME"
git add $DEST_DIR/$TARGET_FNAME
git commit -m "'$MSG'"
echo "Finished gracefully with adding $TARGET_FNAME"
