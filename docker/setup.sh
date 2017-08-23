apt-get update
apt-get install build-essential software-properties-common -y
add-apt-repository ppa:ubuntu-toolchain-r/test -y
apt update
apt-get install -y git
apt-get install -y nodejs
apt-get install -y npm
cd jquery/
npm install -g grunt-cli
npm install
npm run build
