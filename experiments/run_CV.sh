#!/bin/bash

if (( $# != 0 )); then
    echo "No argument is needed"
else

# declare an array variable
declare -a ALL_CONFIG_FILE=("configfiles/CV_experiment/A01_max60_split_0.ini" "configfiles/CV_experiment/A01_max60_split_1.ini" "configfiles/CV_experiment/A01_max60_split_2.ini" "configfiles/CV_experiment/A01_max60_split_3.ini")

for configfile in "${ALL_CONFIG_FILE[@]}";
    do python do_training.py --configfile $configfile --repeat 0
done

fi