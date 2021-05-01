#!/bin/bash

NAME=$1

if pgrep -x "$1" > /dev/null
then
    exit 0
else
    exit 1
fi
