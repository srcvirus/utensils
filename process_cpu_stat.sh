#!/bin/bash
process_name=$1
refresh_interval=1  # 1 second.
pid_list=`pgrep $process_name`
while :
do
  for pid in $pid_list
  do
    clear
    ps -p $pid -L -o pid,tid,psr,pcpu
  done
  sleep $refresh_interval
done
