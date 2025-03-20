#!/bin/sh

ln -sf com.chrisvander.themeswitch.plist ~/Library/LaunchAgents/com.chrisvander.themeswitch.plist
sudo ln -sf themeswitch.sh /usr/local/bin/themeswitch.sh
swiftc themeswitchd.swift -o themeswitchd
sudo ln -sf themeswitchd /usr/local/bin/themeswitchd
launchctl bootstrap -w ~/Library/LaunchAgents/com.chrisvander.themeswitch.plist &> /dev/null
launchctl start com.chrisvander.themeswitch
