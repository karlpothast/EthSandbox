#!/bin/bash
screen -S 'novnc' -d -m /app/web.sh
sleep 3
/app/x11.sh
#sleep 1
#screen -S 'x11' -d -m /app/x11.sh
