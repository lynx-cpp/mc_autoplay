#!/bin/bash 

dir=`dirname $0`
cd $dir

./close.sh

#create_blocks
#create_furnace
#exp_farm 
#trade
#right_key

name="trade"
name="create_blocks"
name="exp_farm"

if [ "$1" != "" ]
then
    name="$1"
fi

bash $name &

echo "$!" > .last_pid
