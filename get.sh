#!/usr/bin/sh

path="${1}"

queries="${2}"

curl -sL -X GET "https://graph.microsoft.com/v1.0/${path}?${queries}"
