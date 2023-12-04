#!/usr/bin/sh

# yyyy-MM-dd HH:mm:ss

sec="${1:-"0sec"}"

year=$( date +%Y --date="-${sec}" )

month=$( date +%m --date="-${sec}" )

day=$( date +%d --date="-${sec}" )

date="${year}-${month}-${day}"

hour=$( date +%H --date="-${sec}" )

minute=$( date +%M --date="-${sec}" )

second=$( date +%S --date="-${sec}" )

time="${hour}:${minute}:${second}"

timestamp="${date}T${time}"

iso8601="${date}T${hour}:${minute}"

datetime="${year}${month}${day}${hour}${minute}${second}"
