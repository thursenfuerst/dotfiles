#!/bin/bash

STATUS=`acpi -b | awk "{print $1}" | sed 's/\([^:]*\): \([^,]*\), \([0-9]*\)%.*/\2/'`
PERC=`acpi -b | awk "{print $1}" | sed 's/\([^:]*\): \([^,]*\), \([0-9]*\)%.*/\3/'`

OUTPUT=''


if [ $STATUS == "Charging" ]
    then
        OUTPUT=" $PERC"
elif [ $STATUS == "Discharging" ]
then
    if [ $PERC -lt 25 ]
    then
        OUTPUT=" $PERC"
    
    elif [ $PERC -lt 50 ]
    then
        OUTPUT=" $PERC"
    elif [ $PERC -lt 75 ]
    then
        OUTPUT=" $PERC"
    else 
        OUTPUT=" $PERC" 
    fi
else
    OUTPUT=" 100"
fi


OUTPUT=$OUTPUT'%'


echo $OUTPUT
