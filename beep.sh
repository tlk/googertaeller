#!/bin/bash

tty_bell() {
    # this is too slow
    printf \\x07
}

phone_beep() {
    # thanks to https://osxdaily.com/2016/03/31/play-dtmf-tones-mac/
    afplay --volume 0.05 /System/Library/Components/CoreAudio.component/Contents/SharedSupport/SystemSounds/telephony/dtmf-pound.caf &
}

last_line="none"

while read -r line;
do
    # limit to 10 beeps per second
    if [ "$last_line" = "${line:0:10}" ];
    then
        continue;
    fi

    #
    # example:
    #   "19:35:07.2"
    #   "19:35:07.9"
    #   "19:35:08.0"
    #

    last_line="${line:0:10}"

    phone_beep
    printf .
done

echo .

