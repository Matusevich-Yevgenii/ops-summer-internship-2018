#!/usr/bin/env bash
# short script for unarchive

file=/tmp/additional.zip

unz=$(fcrackzip -l 3-4 -u -c 1 ${file} | awk '{ print $5 }')

unzip -P ${unz} ${file}
