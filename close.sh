dir=`dirname $0`
cd $dir

pid_filename=".last_pid"

pid=`cat "$pid_filename"`
kill -9 $pid

rm -f "$pid_filename"

xdotool keydown Shift
sleep 0.01
xdotool keyup Shift
xdotool mouseup 3
