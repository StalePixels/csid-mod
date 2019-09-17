/!/bin/sh

# First, I need some stuff, trust me, I'm trust worthy...
sudo /usr/bin/apt-get install libsdl-sound1.2-dev libsdl-sound1.2 build-essential

# Install
cd /tmp
git clone https://github.com/StalePixels/csid-mod
cd csid-mod
make 

# Now I need to put it into place, but you should still trust me...
sudo cp build/csidl build/csid /usr/bin

#Clean up
rm -rf /tmp/csid-mod

# THE DEMO
curl http://zx.xalior.com/monty.sid | csidl

# and NEVER trust a shellscript from someone you don't trust, okay!
echo DONE!

