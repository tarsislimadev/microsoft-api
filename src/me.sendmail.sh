#!/usr/bin/sh

## inputs

. datetime.sh

path="me/sendMail"

to="${1}"

subject="${2}"

echo "Write a content: "

read content

data=$( jq --null-input  --arg subject "${subject}" --arg content "${content}" --arg emailAddress "${to}" '{"message":{"subject":$subject,"body":{"contentType":"Text","content":$content},"toRecipients":[{"emailAddress":{"address":$emailAddress}}]}}' )

## runners

resp=$( . post.sh "${path}" "a=a" "${data}" )

## outputs

. create.sh "${path}" "${datetime}" "resp" "${resp}"
