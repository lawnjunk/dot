#!/usr/bin/env bash

local_ip=$(ifconfig |grep -w 'inet' |grep -v '127.0.0.1' |head -n 1 | cut -d ' ' -f2)

if [[ $local_ip ]];then
  echo $local_ip
  exit
fi

echo "n/a"
