#usage: take carrot and potatoes as much as you can.
#		put carrots at the first position and potatoes at the second position in yout backpack
dir=`dirname $0`
cd $dir

trade_script="trade"

long_interval=0.5
short_interval=0.05

pack_1_x=549
pack_1_y=403


pack_2_x=572
pack_2_y=$pack_1_y

while (true)
	do

#first
	xdotool click 3
	sleep $long_interval
	xdotool mousemove $pack_1_x $pack_1_y
	sleep $short_interval
	bash $trade_script
	sleep 3

#second
	xdotool click 3
	sleep $long_interval
	xdotool mousemove $pack_2_x $pack_2_y
	sleep $short_interval
	bash $trade_script
	sleep 3

	done
