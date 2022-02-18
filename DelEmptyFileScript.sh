#!/bin/bash

echo "Enter the directory in which files with zero size is to be found: "
read dirName
echo "For $dirName all the files with zero size will be deleted"

if [ ! -d $dirName ]
then 
echo "invalid directory"
else
cd $dirName
for fileName in $(find . -type f -size 0)
do 
rm -- $fileName
done
echo "Left over files with non-zero size are: "
for files in $(find . -type f)
do 
echo $files
done
fi