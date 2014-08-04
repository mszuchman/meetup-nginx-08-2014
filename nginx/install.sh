#!/bin/bash
mkdir -p /tmp/nginx/
curl http://nginx.org/download/nginx-1.6.0.tar.gz -o /tmp/nginx/nginx.tar.gz
tar -xzvf /tmp/nginx.tar.gz -C /tmp/nginx/

cd /tmp/nginx/nginx-1.6.0

./configure --with-cc-opt="-Wno-deprecated-declarations"
make
sudo make install
sudo chmod -R 777 /usr/local/nginx/
cd -
