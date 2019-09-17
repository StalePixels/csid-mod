#!/bin/sh

# First, I need some stuff, trust me, I'm trust worthy...
/usr/bin/apt-get install libsdl-sound1.2-dev libsql-sound1.2 build-essential

cd /tmp
git clone https://github.com/StalePixels/csid-mod
cd csid-mod
make 

# Now I need to put it into place, but you should still trust me...
sudo cp build/csidl build/csid /usr/bin

curl http://zx.xalior.com/monty.sid -q | csidl

# and NEVER trust a shellscript from someone you don't trust, okay!
echo DONE!

