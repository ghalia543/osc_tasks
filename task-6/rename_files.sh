#!/bin/bash
read -p "Enter the directory: " directory
if [[ -d "$directory" ]]
   then
      for file in "$directory"/*.txt
         do
            mv "$file" "$directory/old_$(basename $file)"
         done
else
   echo "no such directory"
fi
