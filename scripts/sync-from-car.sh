#!/bin/bash
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
cd "$parent_path"

helpFunction()
{
   echo ""
   echo "Usage: $0 -s user@hostname"
   echo "-s source as user@hostname"
   echo "-full to sync donkey repo"
   exit 1 # Exit script after printing help
}

while getopts "s:" opt
do
   case "$opt" in
      s ) source="$OPTARG" ;;
      full ) full="true" ;;
      ? ) helpFunction ;; # Print helpFunction in case parameter is non-existent
   esac
done

# Print helpFunction in case parameters are empty
if [ -z "$source" ]
then
   echo "Please specify the source computer (user@hostname)";
   helpFunction
fi

# Begin script in case all parameters are correct
if [ -n "$full" ]
then
   echo "syncing donkeycar lib to $source"
   rsync -rv --progress --partial $source:/home/pi/donkeycar/donkeycar/ ../donkeycar/donkeycar
fi

echo "syncing mycar to $source"
rsync -rv $source:/home/pi/mycar/ ../mycar