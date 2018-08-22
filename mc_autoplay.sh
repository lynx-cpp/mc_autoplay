#!/bin/bash 

dir=`dirname $0`
cd $dir

#./close.sh

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

#create flag

touch .mc_autoplay_continue_flag 
echo "Triggerring autoplay...name = $name" >> log

bash $name 816 662 &
#bash $name 874 511 &
#bash $name 869 483 &

echo "$!" > .last_pid

