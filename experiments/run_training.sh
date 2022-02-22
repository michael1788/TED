#!/bin/bash

CONFIG_FILE=$1

if (( $# != 1 )); then
    echo "You have to provide 1 argument; the path to the config file"
else

python do_training.py --configfile $CONFIG_FILE --repeat 0

fi