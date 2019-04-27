#!/bin/bash

sudo chmod -R 755 /System/Library/Extensions
sudo chmod -R 755 /Library/Extensions
sudo chown -R root:wheel /System/Library/Extensions
sudo chown -R root:wheel /Library/Extensions
sudo kextcache -i /
sudo touch /System/Library/Extensions
sudo touch /Library/Extensions
sudo kextcache -u / 
sudo kextcache -q -update-volume /
sudo kextcache -system-caches