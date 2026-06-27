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

if [ $NUMBER -gt 20 ]; then

    echo "Given number: $NUMBER is greter then 20"
elif [ $NUMBER -eq 20 ]; then
     echo "Given number is : $NUMBER eqal to 20"
else   
    echo "Given number: $NUMBER is less then 20"
fi
