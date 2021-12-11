#!/bin/bash
screen -S 'x11' -d -m /app/conf.d/x.sh
screen -S 'novnc' -d -m /app/conf.d/web.sh
