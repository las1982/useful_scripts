#!/bin/bash

sites=("tut.by" "onliner.by" "google.com" "mail.ru" "yandex.ru")

while true
do
  for ix in ${!sites[*]}
  do
    speedtest --no-upload
    sleep 30
#    ping "${sites[$ix]}" -c 5
#    sleep 10
#    speedtest
#    sleep 30
  done
done