#!/bin/bash
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
cd "$parent_path"

helpFunction()
{
   echo ""
   echo "Usage: $0 -t target as user@hostname"
   echo -e "\t-t target as user@hostname"
   exit 1 # Exit script after printing help
}

while getopts "t:" opt
do
   case "$opt" in
      t ) target="$OPTARG" ;;
      ? ) helpFunction ;; # Print helpFunction in case parameter is non-existent
   esac
done

# Print helpFunction in case parameters are empty
if [ -z "$target" ]
then
   echo "Please specify the target computer (user@hostname)";
   helpFunction
fi

# Begin script in case all parameters are correct
echo "syncing donkeycar lib to $target"
rsync -rv --progress --partial ../donkeycar/donkeycar/ $target:/home/pi/donkeycar/donkeycar
echo "syncing mycar to $target"
rsync -rv ../mycar/ $target:/home/pi/mycar


