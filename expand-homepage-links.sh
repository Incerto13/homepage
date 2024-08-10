#!/bin/sh
# how to use: % bash expand-homepage-links.sh homepage/index-no-links.html homepage/index.html

if [[ $# -eq 0 ]] ; then
    echo 'Error: missing file output path arguments. Command should be the following: "bash expand-homepage-links.sh homepage/index-no-links.html homepage/index.html"'
    exit 0
fi

echo expanding links...
# Load environment variables from .env file
[ ! -f ../.env ] || export $(grep -v '^#' ../.env | xargs)

while read line; do 
    # if [[ "$line" =~ '^${' ]]
    if [[ "$line" == *'${'* ]];
    then 
        eval echo \"$line\"; 
    else
        echo $line;
    fi
done < $1 > $2
echo expanding links complete