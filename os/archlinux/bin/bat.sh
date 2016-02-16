#!/bin/env sh

acpiState=`acpi| cut -d, -f 3| cut -d' ' -f 3`
acpiPercent=`acpi| cut -d' ' -f4| sed "s/,//"`

if [ $acpiState = "until" ]; then
  echo "$acpiPercent ⚡️"
else 
  echo "$acpiPercent"
fi 
