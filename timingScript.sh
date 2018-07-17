#!/bin/bash

java -jar /home/pi/AlarmClock/AlarmClock.jar
/home/pi/AlarmClock/weatherGet.sh
sleep 10;

while [ true ]; do
	minutes=$(date +%M);
	echo "checking minutes";
	echo $minutes;
	if [ "$minutes" = "56" ]
	then
		echo "getting weather";
		/home/pi/AlarmClock/weatherGet.sh;
	else
		echo "not getting weather";
	fi;
	
	while [ ! -s /home/pi/AlarmClock/CurrentTemp.txt ]
	do
		echo "weather not available, retrying";
		/home/pi/AlarmClock/weatherGet.sh;
		sleep 10;
	done;
	
	/home/pi/AlarmClock/weatherGet.sh
	echo "sleeping";
	sleep 60;
done;