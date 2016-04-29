dir=`dirname $0`
cd $dir

pid=`cat .last_pid`
kill -9 $pid

xdotool keydown Shift
sleep 0.01
xdotool keyup Shift
xdotool mouseup 3
