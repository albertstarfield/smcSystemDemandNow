#!/bin/bash

# Path to the plist file
PLIST_NAME=com.example.smcSystemDemandNow.plist
PLIST_PATH="/Library/LaunchDaemons/com.example.smcSystemDemandNow.plist"
cp ${PLIST_NAME} ${PLIST_PATH}

# Unload the service
sudo launchctl unload "$PLIST_PATH"

# Load the service
sudo launchctl load "$PLIST_PATH"

echo "Service ${PLIST_NAME} restarted."
