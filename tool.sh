# Pwndbg (https://github.com/pwndbg/pwndbg)
cd /opt
git clone https://github.com/pwndbg/pwndbg
cd pwndbg
./setup.sh

# Sublime Text 3
get -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text
