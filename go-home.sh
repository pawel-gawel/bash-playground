#!/bin/bash

set +x 

while [[ $(date '+%s') -lt $(date -d "16:00" '+%s') ]]; do
  echo jade
  sleep 1
done

