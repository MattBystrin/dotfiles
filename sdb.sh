#!/bin/bash

set -x

kdmx_cmd="kdmx -p $1 -b $2 -s /tmp/kdmx"
pcom_cmd="picocom -b $2"

# $1 - tty
# $2 - baudrate
start_tmux()
{
	tmux new-session -d -s debug "$kdmx_cmd";
	if [ -z "$(tmux ls | grep debug)" ]; then
		echo "Failed to launch kdmx" > /dev/stderr
		exit 1
	fi
	# Sleep to wait for kdmx to create tmp files
	while [ ! -f /tmp/kdmx_trm ]; do
		echo "No term number" > /dev/stderr
		sleep 1
	done

	sleep 1

	tmux splitw -h -t debug:0.0 -l 70% "$pcom_cmd $(cat /tmp/kdmx_trm)" || exit 1
	tmux attach -t debug
}

start_tmux $1 $2
