#!/usr/bin/env bash

set -eu
set -o pipefail


echo "DEFAULTS RELATED"
echo "================"

echo "Disable the sound effects on boot"
sudo nvram SystemAudioVolume=" "

echo "Remove duplicates in the 'Open With' menu"
/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister \
  -kill -r -domain local -domain system -domain user

echo "Allow to see ~/Library"
chflags nohidden ~/Library

echo "Allow applications from anywere"
sudo spctl --master-disable
