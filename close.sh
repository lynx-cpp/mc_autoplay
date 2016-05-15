dir=`dirname $0`
cd $dir

#delete flag
rm ./.mc_autoplay_continue_flag

sleep 2

pid_filename=".last_pid"

pid=`cat "$pid_filename"`
kill -9 $pid

rm -f "$pid_filename"

#for key in 'shift' 'w' 's' 'space'
#do
##xdotool keydown $key
##	sleep 0.01
#	xdotool keyup $key
#	sleep 0.01
#
#done
#
#xdotool mouseup 3
