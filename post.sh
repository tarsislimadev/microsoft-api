#!/usr/bin/sh

. .env

path="${1}"

queries="${2}"

json="${3}"

curl -sL -X POST \
  --header "Content-Type: application/json" \
  --header "Accept: application/json" \
  --header "Authorization: ${API_KEY}" \
  --data "${json}" "https://graph.microsoft.com/v1.0/${path}?${queries}"
