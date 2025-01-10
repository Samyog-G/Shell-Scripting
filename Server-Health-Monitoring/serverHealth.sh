#!/bin/bash
# Author: Samyog Ghimire
# Date: 10/01/2025

#Basic server health monitoring system.
############################################################

#Setting thresholds in percentile
cpu_threshold=90
memory_threshold=90
disk_threshold=90
load_threshold=5

#Getting current system stats
cpu_usage=$(top -bn1 grep "Cpu(s)" | sed "s/.*, *\([0-9]*\)%* id.*/\1/" | awk '{print 100 - $1}' )
memory_usage=$(free | grep Mem | awk '{print ($3/$2) *100.0}')
disk_usage=$(df / | grep /| awk '{print $5}' | sed 's/%/g')
load_avg=$(uptime | awk -F 'load average:' '{print $2}' | cut -d',' -f1 | sed 's/ //g')

#Check CPU usage
if (($(echo "$cpu_usage > $cpu_threshold" | bc -l)))
;then
echo "Warning: CPU usage is above $cpu_threshold%. Current: $cpu_usage%" >> /home/samyog-ghimire/shell-scripting/Server-Health-Monitoring/serverHealth.log
fi

#Check memory usage
if (($(echo "$memory_usage>$memory_threshold" | bc -l )));then
echo "Warning: Memory usage is above $memory_threshold%". Current: $memory_usage >> /home/samyog-ghimire/shell-scripting/Server-Health-Monitoring/serverHealth.log
fi

#Check disk usage
if (($(echo "$disk_usage > $disk_threshold" | bc -l)));then
echo "Warning: Disk usage is above $disk_threshold%. Current: $disk_usage%" >> /home/samyog-ghimire/shell-scripting/Server-Health-Monitoring/serverHealth.sh
fi

#Check load average
if (($(echo "$load_avg > $load_threshold" | bc -l)));then
echo "Warning: Load average id above $load_threshold. Current : $load_avg" >> /home/samyog-ghimire/shell-scripting/Server-Health-Monitoring/serverHealth.sh
fi



