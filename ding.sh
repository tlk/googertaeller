#!/bin/bash

tty_bell() {
    printf '\x07';
}

phone() {
    afplay /System/Library/Components/CoreAudio.component/Contents/SharedSupport/SystemSounds/telephony/dtmf-pound.caf &
}

while read -r line;
do
    #tty_bell
    phone
    printf '.';
done

echo .

