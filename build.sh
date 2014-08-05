cd /vagrant/
cd openssl_0.9.8g-8/
make clean
./config no-asm
make
cd ..
cd openssh-4.7p1/
mkdir ../path
./configure --prefix=/vagrant/path/ --with-ssl-dir=/vagrant/openssl_0.9.8g-8
make
sudo make install
cd ..
./path/bin/ssh-keygen
sudo apt-get install openssh-blacklist-extra
ssh-vulnkey id_rsa
