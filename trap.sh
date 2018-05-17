#!/bin/bash

printf "go on and stop this process with CTRL+C\n\n"

doOnTrap() {
  echo this will be done on oxit
}

doOnCtrlC() {
  echo this will be done on CTRL+C
  exit
}

trap doOnTrap EXIT

trap doOnCtrlC SIGINT SIGTERM

while :; do 
  sleep 10
done

