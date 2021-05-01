#!/bin/bash

PATTERN="/$1 "

if grep -qs "$PATTERN" /proc/mounts; then
   # mounted
   exit 0
else
   # not mounted
   exit 1
fi
