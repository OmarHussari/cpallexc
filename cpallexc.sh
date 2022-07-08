#!/bin/zsh
echo "Copying all files in $2 except $1 to $3 "
echo "Enter (1) to continue, (0) to exit"
read wantstocontinue
if [ $wantstocontinue -eq 1 ]
then
  for file in $2*
  do
    echo $file
    if [ "$file" -ef "$1" ]
    then
      echo "File above will not be copied!"
    else
      echo "File above is being copied"
      cp "$file" $3
    fi
  done
else
  echo "cpallexc command terminated"
fi

cd ..
