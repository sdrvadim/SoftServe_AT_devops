#!/bin/bash

empty () {
echo  -e "--all key displays the IP addresses and symbolic names of all hosts in the current subnet\n--target key displays a list of open system TCP ports"
}

all () {
nmap -sn 10.10.10.* | grep for | tr -d 'Nmap scan report for' 
}

target () {
nmap -sT localhost | grep open
}

if [ "$#" == "0" ]
then
 empty
 exit 1
elif [ "$1" == "--all" ]
then
 all
elif [ "$1" == "--target" ]
then
 target
fi
