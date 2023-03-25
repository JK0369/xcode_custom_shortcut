#!/bin/sh

SERVICE_DIR=~/Library/Services/

# copying automator workflow
echo "copying Service into ~/Library/Services/ ..."
cp -aR ./my\ custom\ shortcut.workflow $SERVICE_DIR

# copying source to the services folder
echo "copying myCustomShortcut.sh into ~/Library/Services/ ..."
cp ./myCustomShortcut.sh $SERVICE_DIR

# add custom shortcut for XCode
echo "add custom shortcut for XCode ..."
defaults write com.apple.dt.Xcode NSUserKeyEquivalents -dict-add "my custom shortcut" "^\$@1"

echo "restart xcode"
killall Xcode