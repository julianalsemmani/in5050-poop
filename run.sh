#!/bin/bash

start_time=$(date +%s%N) # Starttid i nanosekunder

./c63enc -w 352 -h 288 -o testvid323232.c63 foreman.yuv

end_time=$(date +%s%N) # Sluttid i nanosekunder
duration=$(( (end_time - start_time) / 1000000 )) # Varigheten i millisekunder

echo "Duration: $duration ms"
