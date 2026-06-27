#!/bin/bash
## conditions are if, elif, else, fi

# if [ expression ]; then
#     //code
# fi

# if [ expression ]; then
#     //code
# elif [ expression ]; then
#      //code here
# else
#     //code here    
# fi


NUMBER=$1
# -gt ->
# -lt ->
# -eq ->
# -ne ->

if [ $NUMBER -gt 20 ] ; then
    echo "Given number: $NUMBER is greter then 25"
fi   
