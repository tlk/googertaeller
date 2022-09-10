#!/bin/bash

filter="google.cfg"

if [ -n "$1" ];
then
    filter="$1"
fi

if [ ! -f "$filter" ];
then
    echo "'$filter' filter file does not exist"
    exit 1
fi

debounce() {
    # limit to 10 beeps per second

    last_line="none"

    while read -r line;
    do
        if [ "$last_line" = "${line:0:10}" ];
        then
            continue;
        fi

        echo .

        last_line="${line:0:10}"
    done
}

beep() {
    while read -r dot;
    do
        # visual output
        printf "[32;1m.[0m"

        # the bell is too slow
        # printf \\x07

        # this works, thanks to https://osxdaily.com/2016/03/31/play-dtmf-tones-mac/
        afplay --volume 0.05 /System/Library/Components/CoreAudio.component/Contents/SharedSupport/SystemSounds/telephony/dtmf-pound.caf &
    done
}

sudo tcpdump --immediate-mode -nql -F "$filter" 2>&1 | debounce | beep

