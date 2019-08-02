#!/bin/bash
# -----------------------------------------------------------------------------
echo "Select filename using dialog"
FILE="$(zenity --file-selection --title="Select a File")"
echo "Your file is $FILE"
sleep 1

# -----------------------------------------------------------------------------

if test -z "$FILE"
then
      # echo "\$FILE is empty and now exit"
      sleep 1
      read -n 1 -s -r -p "File is empty, Press any key to continue..."
      exit
else
      # echo "\$FILE is NOT empty it contain $FILE"
fi
sleep 1

# -----------------------------------------------------------------------------

VAR="$FILE"
echo "${VAR}"
sleep 1

sudo dd if="$FILE" of=/dev/sdc
