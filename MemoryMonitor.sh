#!/bin/bash

#Configure the email address to send alerts

EMAIL="cammykmz@gmail.com"

check_memory() {
	#Get the total and available memory in KB
	total_memory=$(grep MemTotal /proc/meminfo | awk '{print$2}')
	available_memory=$(grep MemAvailable /proc/meminfo | awk'{print$2}')

	available_memory_percentage=$((100 * available_memory / total_memory))

	if [ $available_memory_percentage -lt 10 ]; then

		echo "Warning: Available memory is below 10%!" | mail -s "Memory alert" $EMAIL

	fi
}
