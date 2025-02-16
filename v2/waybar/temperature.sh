#!/bin/bash
awk '{printf "%.0f", $1/1000}' /sys/class/thermal/thermal_zone2/temp | tr -d '\n'



