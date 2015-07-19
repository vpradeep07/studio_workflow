#!/bin/bash

# Runs gphoto2 in tethered mode.
gphoto2 --capture-tethered --hook-script=tethered_hook.sh --keep
