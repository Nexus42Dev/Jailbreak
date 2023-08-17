#!/bin/bash
cd ~/

echo -e "Downloading MacSploit"
curl -O "https://cdn.discordapp.com/attachments/1100029005819813928/1141593315205201981/MacSploit.zip"

echo -e "Installing MacSploit"
unzip ./MacSploit.zip

echo -e "Patching Roblox"
./insert_dylib /Applications/Roblox.app/Contents/MacOS/macsploit.dylib /Applications/Roblox.app/Contents/MacOS/RobloxPlayer --strip-codesig --all-yes
mv ./macsploit.dylib /Applications/Roblox.app/Contents/MacOS/macsploit.dylib
rm ./insert_dylib.dylib

echo -e "Installing MacSploit App"
mv ./MacSploit.app /Applications/MacSploit.app

echo -e "Install Complete!"
