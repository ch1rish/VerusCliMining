#!/bin/bash

temp=$(</sys/class/thermal/thermal_zone0/temp)

while true
do
 temp=$(</sys/class/thermal/thermal_zone0/temp)
 temp_f=`echo  "$temp/1000" | bc -l`
 printf  "CPU Temp: %.3f C\r\e\e[?25l"  $temp_f
 sleep 1
done