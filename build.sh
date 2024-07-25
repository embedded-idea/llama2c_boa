#!/bin/bash
echo "Hello world"
make

pushd boa-0.94.13
cd src
./configure
make
cd ..

popd 

sudo mkdir -p /usr/lib/cgi-bin

sudo cp run /usr/lib/cgi-bin/llama2.cgi
sudo cp tokenizer.bin /usr/lib/cgi-bin/
sudo cp stories15M.bin /usr/lib/cgi-bin/


sudo cp boa-0.94.13/html/index.html /var/www/

sudo boa-0.94.13/src/boa -c boa-0.94.13
