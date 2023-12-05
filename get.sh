#!/usr/bin/sh

. .env

path="${1}"

queries="${2}"

curl -sL -X GET -H "Authorization: ${Authorization}" "https://graph.microsoft.com/v1.0/${path}?${queries}"
