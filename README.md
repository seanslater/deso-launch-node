# bitclout-launch-node

Quick and dirty installation script to start a new BitClout node using a Digital Ocean Ubuntu droplet - feedback, improvements, comments welcome.

Copy/paste the following commands to download the script, allow it to execute, then run it. The script will install Docker and download the BitClout installation packages. There are a couple of large download confirmations that require user input - accept/yes to download and continue.

The Nano text editor will open to edit dev.env - you can add your BitClout public key to ADMIN_PUBLIC_KEYS to lock admin access to your account and hide it from visitors to the node (or just leave it blank allowing open admin viewing access), Ctrl-X to close Nano and save/exit).

Tada!

Once installation has completed the droplet needs to be rebooted (to allow the open file limits to be refreshed).

Once rebooted, just start the node. You will see nginx, backend and frontend being created. The node will then start to sync the blockchain - this will take a bit of time to complete. You can now open the IP address assigned to the Droplet in your web browser and you should have a working read-only BitClout node online! Enjoy!

# Usage

sudo wget https://raw.githubusercontent.com/seanslater/bitclout-launch-node/main/bitclout-node.sh

sudo chmod 777 ./bitclout-node.sh

sudo ./bitclout-node.sh

sudo reboot

# Starting node

* sudo ./run-main/run.sh
