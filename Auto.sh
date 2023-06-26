#!/bin/bash

url=""
max=""
delay=""

echo " AUTO VISITOR "
echo " Author: MSVerse "
echo "URL: "
read url
echo "Jumlah Bot: "
read max
echo "Delay (milliseconds)(1 sec = 1000): "
read delay
echo ""

for ((i=1; i<max+1; i++))
do
  result=$(curl -s -L -A "$(shuf -n 1 user-agents.txt)" -e "$(shuf -n 1 referers.txt)" $url)
  echo "[$i] VISITORS SENT FROM ($result)"
  sleep $(bc <<< "scale=3; $delay/1000")
done

echo ""
echo "[x] FINISHED"

exit 0
