#!/bin/sh

cp -f com.chrisvander.themeswitch.plist ~/Library/LaunchAgents/com.chrisvander.themeswitch.plist
sudo cp -f themeswitch.sh /usr/local/bin/themeswitch
swiftc themeswitchd.swift -o themeswitchd
sudo cp -f themeswitchd /usr/local/bin/themeswitchd
launchctl bootstrap gui/$(id -u) ~/Library/LaunchAgents/com.chrisvander.themeswitch.plist
launchctl start com.chrisvander.themeswitch
