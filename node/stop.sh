#!/bin/bash

cd /Bismuth
echo "Asking Bismuth Node to stop..."
#python commands.py stop
screen -wipe
sleep 1
screen -X -S node kill

