#!/bin/sh

# First, I need some stuff, trust me, I'm trust worthy...
sudo /usr/bin/apt-get install libsdl-sound1.2-dev libsdl-sound1.2 build-essential

# Install
cd /tmp
git clone https://github.com/StalePixels/csid-mod
cd csid-mod
make 

# Now I need to put it into place, but you should still trust me...
sudo cp build/csidl build/csid /usr/bin

# THE DEMO
curl https://zx.xalior.com/monty.sid /tmp/csid-mod/monty.sid
csidl /tmp/csid-mod/monty

#Clean up
rm -rf /tmp/csid-mod

# and NEVER trust a shellscript from someone you don't trust, okay!
echo DONE!

