#!/bin/bash

# Hook script compatible with gphoto2 for tethered shooting.  Displays
# downloaded jpgs as fullscreen in eog.  Ignores raw files.

case "$ACTION" in
    init)
	echo "Got Init"
        ;;

    start)
	echo "Got start"
	;;

    stop)
	echo "Got stop"
	;;

    download)
	echo "Got download"
        if [[ $ARGUMENT == *.jpg ]]
	then
	    eog --fullscreen  --single-window "$ARGUMENT" &
	fi
	;;
esac
