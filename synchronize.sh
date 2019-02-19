#!/bin/bash

#Getting the time and date

lynx --dump "https://time.is/" > clock.txt
cat clock.txt | grep -m1 'PM\|AM' > currentime.txt
sed -i "s/ //g" currentime.txt
sed 's/PM*\|AM*//' currentime.txt > modifiedtime.txt
lynx --dump "https://www.worldtimeserver.com/current_time_in_US-IL.aspx" > date.txt
cat date.txt | grep -m1 '20[1-9][0-9]' >currentdate.txt
sed -i "s/ //g" currentdate.txt

#declaring variables

echo -n "$(cat currentdate.txt | grep -o 'Sunday\|Monday\|Tuesday\|Wednesday\|Thursday\|Friday\|Saturday\|')" >day.txt
day=( $(<day.txt) )
echo -n "$(cat currentdate.txt | grep -o 'January\|February\|March\|April\|May\|June\|July\|August\|September\|October\|November\|December\|')" >month.txt
month=( $(<month.txt) )
echo -n "$(cat currentdate.txt | grep -o -m1 '[0-3][0-9]')" >number.txt
echo -n "$(cat currentdate.txt | grep -o '20[0-9][0-9]')" >year.txt
number=( $(<number.txt) )
year=( $(<year.txt) )
clock=( $(<modifiedtime.txt) )

#Finally putting it all together and changing the date and time

echo -n "$number $month $year $clock" >change.txt
change="$(<change.txt)"
sudo date -s "$change"

#deleting unecessary files now
rm currentime.txt modifiedtime.txt date.txt currentdate.txt day.txt month.txt number.txt year.txt change.txt clock.txt

exit 0

