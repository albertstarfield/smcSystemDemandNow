#!/bin/bash

# Path to the plist file
PLIST_NAME=com.TwilightMigratory.smcSystemDemandNow.plist
PLIST_PATH="/Library/LaunchDaemons/com.TwilightMigratory.smcSystemDemandNow.plist"
cp ${PLIST_NAME} ${PLIST_PATH}

# Unload the service
sudo launchctl unload "$PLIST_PATH" 2>/dev/null

# Load the service
sudo launchctl load "$PLIST_PATH"

echo "Service ${PLIST_NAME} restarted."
