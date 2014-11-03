#! /bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 [source_file] [generated_json_result]"
    exit;
fi

if [ -f $2 ]; then
    rm -rf $2
fi

while read line
do
    curl -u lb_melb:Q83C5PwHTn9ur $line >> $2
done < $1


echo "Job Done, Thanks for using this."