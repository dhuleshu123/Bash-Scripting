#!/bin/bash

FILEPATH="/home/paul/myscripts/prashant.test"

if [[ -f $FILEPATH ]]
then
        echo "File exist"
else
        echo "Creating file now"
        touch $FILEPATH
fi
