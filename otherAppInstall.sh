# for parts that needs to be done at home directory
cd 

echo "\n\n"

#install python-3 for theFukc and trash-cli
sudo apt install python3-dev python3-pip python3-setuptools

echo "\n\n"

echo "installing additional plugins: \n   - trash-cli \n   - theFuck (with python3 and pip)"
# install trash-cli 
git clone https://github.com/andreafrancia/trash-cli.git
cd trash-cli
sudo python3 setup.py install

cd


echo "\n\n"

#install theFuck
sudo pip3 install thefuck
