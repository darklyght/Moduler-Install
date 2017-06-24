#!/bin/bash
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs
source /etc/lsb-release && echo "deb http://download.rethinkdb.com/apt $DISTRIB_CODENAME main" | sudo tee /etc/apt/sources.list.d/rethinkdb.list
wget -qO- https://download.rethinkdb.com/apt/pubkey.gpg | sudo apt-key add -
sudo apt-get update
sudo apt-get install -y rethinkdb
npm install -g horizon
npm install -g quasar-cli
quasar init modules_app
cd modules_app
hz init
rm -rf src
git clone https://git.katliyang.com/darklyght/Orbital-2017.git
mv Orbital-2017 src
rm .eslintrc.js
mv src/.eslintrc.js .
npm install --save @horizon/client
npm install --save vuelidate
npm install
cd src/components
ip_addr=$(echo `ifconfig eth0 2>/dev/null|awk '/inet addr:/ {print $2}'|sed 's/addr://'`)
sed -i  -- "s/localhost/$ip_addr/g" *.vue
cd ../..
screen -dmS horizon bash -c 'hz serve --dev --bind all'
screen -dmS quasar bash -c 'PORT=80 quasar dev'
