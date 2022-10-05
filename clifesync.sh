#!/bin/sh

host="https://caulfieldsync.vercel.app/api/timetable"
cache="/Users/deangao/.cache/clifesync"
cachefile="$cache/subjects.json"
nextDays="$1"
prevDays="$2"
token=$(cat "$cache/token")

mkdir -p "$cache"

if [ -z "$1" ]; then nextDays="1"; fi
if [ -z "$2" ]; then prevDays="0"; fi

curl "$host/$token?dayMinus=$2&dayPlus=$1&shorten=true" -o "$cachefile"
