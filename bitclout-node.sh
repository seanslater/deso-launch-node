sudo apt-get -y update

sudo apt-get remove docker docker-engine docker.io containerd runc

sudo apt-get -y update

sudo apt-get -y install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

 echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get -y update

sudo apt-get -y install docker-ce docker-ce-cli containerd.io

sudo docker run hello-world

sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose

docker-compose --version

sudo apt-get -y install unzip

wget https://github.com/bitclout/run/archive/refs/heads/main.zip

unzip main.zip

cd run-main

sudo cp docker-compose.dev.yml docker-compose.yml

sudo nano dev.env

sudo echo "DefaultLimitNOFILE=524288" >> /etc/systemd/system.conf

sudo echo "[Unit]" >> /etc/systemd/system/cloutnode.service
sudo echo "Start BitClout Node" >> /etc/systemd/system/cloutnode.service
sudo echo "[Service]" >> /etc/systemd/system/cloutnode.service
sudo echo "ExecStart=/root/run-main/run.sh" >> /etc/systemd/system/cloutnode.service
sudo echo "[Install]" >> /etc/systemd/system/cloutnode.service
sudo echo "WantedBy=multi-user.target" >> /etc/systemd/system/cloutnode.service
sudo systemctl enable cloutnode

sudo apt-get -y upgrade

sudo apt-get -y update

echo "Installation Complete. Reboot your droplet."
