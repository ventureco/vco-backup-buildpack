#!/usr/bin/env bash


#format data 
indent() {
  sed -u 's/^/       /'
}

#format output and send a copy to the log
output() {
  local logfile="$1"

  while read LINE;
  do
    echo "       $LINE" || true
    echo "$LINE" >> "$logfile" || true
  done
}