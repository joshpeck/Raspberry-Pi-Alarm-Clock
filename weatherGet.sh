echo "-------getting weather-------"
curl tgftp.nws.noaa.gov/weather/current/KAPA.html | tee /home/pi/AlarmClock/WeatherData.html;
python /home/pi/html2text.py /home/pi/AlarmClock/WeatherData.html | tee /home/pi/AlarmClock/WeatherData.txt;
cat /home/pi/AlarmClock/WeatherData.txt | grep -A1 "** Temperature **" | head -2 | tail -1 | tee /home/pi/AlarmClock/CurrentTemp.txt;
cat /home/pi/AlarmClock/WeatherData.txt | head -42 | tail -1 | cut -d' ' -f21 | tee /home/pi/AlarmClock/LastUpdate.txt;
cat /home/pi/AlarmClock/WeatherData.txt | grep -A1 "** Weather **" | head -8 | tail -1 | tee /home/pi/AlarmClock/CurrentWeather.txt
cat /home/pi/AlarmClock/WeatherData.txt | grep -A1 "Sky Conditions" | tail -1 | tee /home/pi/AlarmClock/CurrentSky.txt
echo "-------done-------";
date;