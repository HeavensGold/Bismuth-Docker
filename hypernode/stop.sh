#!/bin/bash

cd /hypernode
echo "Asking Bismuth Node to stop..."
#python commands.py stop
screen -wipe
sleep 1
screen -X -S hypernode kill

