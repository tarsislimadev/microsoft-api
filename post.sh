#!/usr/bin/sh

. .env

path="${1}"

queries="${2}"

curl -sL -X POST -H "Authorization: ${API_KEY}" "https://graph.microsoft.com/v1.0/${path}?${queries}"
