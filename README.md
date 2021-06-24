# bitclout-launch-node
Launch a new BitClout node using Digital Ocean

BitClout node launching on Digital Ocean / Ubuntu droplet

Quick and dirty installation script - feedback, improvements, comments welcome.

Copy/paste the following commands to start installation on a new droplet. The script will install Docker and download the BitClout installation packages. There are a couple of large download confirmations that require user input - accept/yes to download and continue.

The Nano text editor will open to edit dev.env - you can add your BitClout public key to ADMIN_PUBLIC_KEYS to lock access to your account and hide it from visitors to the node (or just leave it blank allowing open admin viewing access), Ctrl-X to close Nano and save/exit).

Tada!

Once installation has completed the new node will launch and you will see nginx, backend and frontend being created. The node will en start to sync the blockchain - this will take a bit of time to complete. You can now open the IP address assigned to the Droplet in your web browser and you should have a working read-only BitClout node online! Enjoy!

# Usage

Download installation script

* sudo wget https://raw.githubusercontent.com/seanslater/bitclout-launch-node/main/bitclout-node.sh

Change permissions to allow script to execute

* sudo chmod 777 ./bitclout-node.sh

Execute script

* sudo ./bitclout-node.sh

Once complete, start up the node.

* sudo ./run-main/run.sh
