#!/bin/bash

tty_bell() {
    printf \\x07
}

phone() {
    # thanks to https://osxdaily.com/2016/03/31/play-dtmf-tones-mac/
    afplay /System/Library/Components/CoreAudio.component/Contents/SharedSupport/SystemSounds/telephony/dtmf-pound.caf &
}

last_line="none"

while read -r line;
do
    # limit to 10 dings per second
    if [ "$last_line" = "${line:0:10}" ];
    then
        continue;
    fi

    last_line="${line:0:10}"

    #tty_bell
    phone
    printf .
done

echo .

