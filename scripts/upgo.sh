#!/usr/bin/env bash
go version
curl -O https://storage.googleapis.com/golang/go1.18.4.linux-amd64.tar.gz
sudo rm -rf /usr/local/go/
sudo tar -C /usr/local/ -xvf go1.18.4.linux-amd64.tar.gz
echo $PATH | grep "/usr/local/go/bin"
go version
