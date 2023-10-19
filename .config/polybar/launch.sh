#!/usr/bin/env bash

# Terminate any existing Polybar instances
killall -q polybar

# Launch bar1

echo "---" | tee -a /tmp/polybar1.log
polybar bar1 2>&1 | tee -a /tmp/polybar1.log & disown

echo "Bars launched"
