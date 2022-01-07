#!/bin/bash
touch /home/student/$(date +"%Y-%m-%d.%H:%M:%S".log)
rsync -azP --stats /home/student/SServe/ /home/backup/ --log-file="/home/student/-%m-%d.%H:%M:%S".log)"