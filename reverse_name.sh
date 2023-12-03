#!/bin/bash


for f in *.pdf
do
    echo $f

    # Strip extension
    new=$(basename $f .pdf)

    # Reorder based on FieldSeparator=.
    new=$(echo $new | awk '
    BEGIN {
        FS=".";
    }
    { 
        var="" 
        for(i=NF; i>1; i--)
            var=var$i FS
        var=var$1
        print var
    }')
    echo $new   

    # Replace . with -
    new=$(echo $new | sed 's/\./-/g')

    # Move file to new name
    mv $f "$new.pdf"
done
