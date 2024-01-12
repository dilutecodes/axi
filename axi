#!/bin/bash

current_os=$(uname -om)

if [[ $current_os == *"aarch64"* ]]; then
    if [ ! -f 'axi64' ]; then
        curl -L https://github.com/axidevelopers/axi/releases/download/axi/axi64 > axi64
        chmod 777 axi64
        ./axi64
    else
        if [[ "$1" == "ip" ]]; then
            ./axi64 ip
        else
            ./axi64
        fi
    fi
elif [[ $current_os == *"arm"* ]]; then
    if [ ! -f 'axi32' ]; then
        curl -L https://github.com/axidevelopers/axi/releases/download/axi/axi32 > axi32
        chmod 777 axi32
        ./axi32
    else
        if [[ "$1" == "ip" ]]; then
            ./axi32 ip
        else
            ./axi32
        fi
    fi
else
    echo -e '\n  Unknown device, aarch or os found, contact author.'
    exit 1
fi
