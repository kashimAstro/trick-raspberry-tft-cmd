#!/bin/sh

script -c  'evtest /dev/input/event0 | grep -E "ABS_X|ABS_Y|ABS_PRESSURE" | cut -d" " -f$(seq -s, 9 11) --only-delimited' --flush | tee -i /tmp/touch.log
