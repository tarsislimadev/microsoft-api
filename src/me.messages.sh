#!/usr/bin/sh

## inputs

. datetime.sh

path="me/messages"

## runners

resp=$( . get.sh "${path}" "" )

## outputs

. create.sh "${path}" "${datetime}" "resp" "${resp}"
