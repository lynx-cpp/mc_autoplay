dir=`dirname $0`
cd $dir/mc_scripts

#create_blocks
#create_furnace
#exp_farm 
#trade
#right_key

name="create_blocks"

bash $name


##moving item in chest
#xdotool mousemove 535 286
#
# #while [ 1 ]
#do
#
#xdotool keyup 1 #xdotool keydown 1
#
#sleep 0.00001
#
#done


##Reaping
#while [ 1 ]
#do
#    xdotool key 5
#    xdotool click 1
#
#    xdotool key 8
#    xdotool click 3
#
#    xdotool key 8
#    xdotool click 3
#
#    xdotool key 8
#    xdotool click 3
#
#    xdotool key 8
#    xdotool click 3
#    sleep 0.001
#done
#

#key="w"
#
#for (( i=0; $i < 9; i++ ))
#do
#    xdotool keyup $key
#
##    xdotool key 8
##    xdotool click 3
#
#    xdotool key 5
#    xdotool click 1
#
#    sleep 0.01
#
#    xdotool key 8
#    xdotool click 3
#
#    sleep 0.1
#
#    xdotool keydown $key
#    sleep 0.2148
##    sleep 0.1593
#done
#xdotool keyup $key
#

#xdotool keydown w
#xdotool mousedown 3

##mouse key
#key=3
#xdotool mousedown 3
#while [ 1 ]
#do
#
#xdotool click $key
#xdotool click $key
#xdotool click $key
#xdotool click $key
##xdotool key space
#
##sleep 0.00001
#
#done


###Create Blocks
##xdotool keydown shift
##xdotool mousemove 539 430
#latency=0.001
#export `xdotool getmouselocation --shell | grep X`
#export `xdotool getmouselocation --shell | grep Y`
#xdotool click 1
#xdotool click 1
#xdotool click 3
#xdotool mousemove 575 281
#xdotool mousedown 1
##sleep 1
##sleep $latency
##xdotool mousedown 1
#sleep $latency
#xdotool mousemove_relative 0 35
#sleep $latency
#xdotool mousemove_relative 0 35
#sleep $latency
#xdotool mousemove_relative 35 0
#sleep $latency
#xdotool mousemove_relative 35 0
#sleep $latency
#xdotool mousemove_relative 0 -35
#sleep $latency
#xdotool mousemove_relative 0 -35
#sleep $latency
#xdotool mousemove_relative -- -35 0
#sleep $latency
#xdotool mousemove_relative -- -35 0
#sleep $latency
#xdotool mousemove_relative -- +35 0
#sleep $latency
#xdotool mousemove_relative 0 +35
#sleep $latency
#xdotool mouseup 1
#sleep $latency
#xdotool mousemove 767 319
#xdotool keydown shift
#sleep 0.1
#xdotool click 1
#sleep 0.1
#xdotool keyup shift
#xdotool mousemove $X $Y
##xdotool click 1
##for (( i=0; $i < 9; i++ ))
##do
##xdotool click 1
##xdotool mousemove_relative 50 0
##done
##xdotool click 0

