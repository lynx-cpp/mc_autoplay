_dir=`dirname $0`
dir=`readlink -f $_dir`
cd $dir

echo closing >> log

#delete flag
rm -f ${dir}/.mc_autoplay_continue_flag

sleep 2

pid_filename=".last_pid"

pid=`cat "${dir}/$pid_filename"`
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
