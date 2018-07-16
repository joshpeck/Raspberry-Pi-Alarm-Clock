# Raspberry-Pi-Alarm-Clock
This repository includes all of the files to run a self-updating alarm-clock that shows the temperature and weather through the unnecessarily complex combination of Python, Bash, and Java.

REQUIRED PARTS
1. Raspberry Pi (or any other linux-based computer) with a working power supply and sd card
2. Computer monitor (preferably 1024x768)
3. Temporary keyboard and mouse (to set it all up)
4. Working internet connection

INSTRUCTIONS
1. Create a directory at /home/pi/ titled 'AlarmClock'. The directory should now be located at /home/pi/AlarmClock
2. Move timingScript.sh and weatherGet.sh into /home/pi/AlarmClock
3. Place AlarmClock.jar in /home/pi/AlarmClock/
4. Extract and then install the font included in alte_haas_grostek.zip
5. Install XScreenSaver (https://packages.debian.org/stretch/xscreensaver)
6. On the desktop of the pi, go to 'applications menu' > 'preferences' > 'screensaver' and select "Disable Screen Saver" under "Mode:"
7. Install html2text (https://pypi.org/project/html2text/ or https://github.com/Alir3z4/html2text/)
8. Install the latest Java JRE

To run the application go to the terminal on the desktop and run /home/pi/AlarmClock/timingScript.sh

ADDITIONAL NOTES
- The included .jar file only works with screens the size of 1024x768
- To change the size would require a change in the source code, which is also included
- The color changing feature is also removable in the source code included
- To change the local weather being used, edit the weatherGet.sh file and change the KAPA in tgftp.nws.noaa.gov/weather/current/KAPA.html to a local ICAO Airport code that suits you

KNOWN ISSUES
- When internet connectivity is lost, the temperature, sky, weather, and updated time is lost forever. The "Updated" text alone stays along with the date and time from the system. It is only slightly annoying and should occur rarely. 
- Changing the weather location may cause incorrect information to be displayed. This is solved by tinkering with the grep/tail/head commands in 'getWeather.sh'
- This does not have an alarm feature (nor was it intended to have one in the first place, it just sounds better by calling it an alarm clock).
