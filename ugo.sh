#!/usr/bin/env bash

echo "script name : $0"

required_usage() {
  printf "\n"
  printf "Required usage is: "
  echo "./ugo.sh <go-version-digits>"
  echo "e.g. 1.18.4, 1.19 etc"
  printf "Check input and try again\n"
  exit 1 
}

if [ $# -ne 1 ];
  then required_usage
fi	  


printf "\nCurrent Go version is: "
go version

digits=$1

curl -O https://storage.googleapis.com/golang/go${digits}.linux-amd64.tar.gz

echo "ubuntu" | sudo
sudo rm -rf /usr/local/go/
sudo tar -C /usr/local/ -xvf go${digits}.linux-amd64.tar.gz

#export PATH="/usr/local/go/bin/:$PATH"
#TODO check first if /usr/local/go/bin exists in $PATH before adding it 

printf "\n"
echo $PATH | grep "/usr/local/go/bin"

printf "\nNew Go version is: "
go version
printf "\n"
