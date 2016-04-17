#!/bin/bash
ioreg -l |awk 'BEGIN{FS="=";max=0;cur=0;} $1~/CurrentCapacity/{cur=$2} $1~/MaxCapacity/{max=$2} END{if (max>0) {printf "%.f%%\n",cur/max*100} else {print "?"}}'
