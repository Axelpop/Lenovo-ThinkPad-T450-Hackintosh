#!/bin/bash 

dir=${0%/*}
if [[ "$dir" == "" ]]; then dir="."; fi
cd "$dir"

echo Installing Patching nvram save method via LogoutHook

# 
patch=/etc/rc.shutdown.d/
for fixed in Root/etc/rc.shutdown.d/*
do
    echo Installing $fixed in "$patch"
    sudo mkdir /etc/rc.shutdown.d 2> /dev/null
    sudo cp "$fixed" "$patch"
done

patch=/etc/rc.boot.d/
for fixed in Root/etc/rc.boot.d/*
do
    echo Installing $fixed in "$patch"
    sudo mkdir /etc/rc.boot.d 2> /dev/null
    sudo cp "$fixed" "$patch"
done

fixed="root/Library/Application Support/Clover/CloverDaemon-stopservice"
patch="/Library/Application Support/Clover/CloverDaemon-stopservice"
patchd="/Library/Application Support/Clover"
if [[ -e "$fixed" ]];
then
    echo Installing CloverDaemon Scripts in "$patchd"
    sudo mkdir "$patchd" 2> /dev/null
    sudo cp -R "Root/$patchd/" "$patchd"

    echo Setting LogoutHook to $patch - runs rc.shutdown.d scripts for Logout or Shutdown
    sudo defaults write com.apple.loginwindow LogoutHook "${patch}"
fi

patch="/etc/rc.boot.d/50.network.local"
if [[ -e "$patch" ]];
then
    echo Setting LoginHook to $patch - runs rc.boot.d script for Login
    sudo defaults write com.apple.loginwindow Login "${patch}"
fi

echo "Installing LaunchDaemon for Startup Scripts"
sudo cp Root/etc/rc.clover.lib /etc
sudo cp Root/Library/LaunchDaemons/com.projectosx.clover.daemon.plist /Library/LaunchDaemons


