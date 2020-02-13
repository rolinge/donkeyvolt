!#/bin/#!/usr/bin/env bash
delay=10
for i in 0 10 20 30 40 50
  do
    cat /sys/bus/i2c/drivers/ina3221x/[0–9]-[0–9][0–9][0–9][0–9]/iio\:device0/in_voltage* | \
         head -1 | \
         logger -t jetsonVolts 
    sleep $delay
  done
