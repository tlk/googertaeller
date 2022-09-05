#!/bin/bash

rm -f my_fifo
mkfifo my_fifo

(./ding.sh < my_fifo) & (sudo script -F my_fifo ./generator.sh)>/dev/null

rm -f my_fifo
