# Sublime Text 3 (this will also run apt-get update)
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text

# 32-bit support
apt-get install gcc-multilib

# Pwndbg (https://github.com/pwndbg/pwndbg)
cd /opt
git clone https://github.com/pwndbg/pwndbg
cd pwndbg
./setup.sh

# Pwntools
sudo apt-get install python2.7 python-pip python-dev git libssl-dev libffi-dev build-essential -y
pip2 install --upgrade pip
pip2 install --upgrade pwntools

# Ropper
pip3 install ropper
