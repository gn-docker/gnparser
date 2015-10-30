#!/bin/bash

if [ "$1" == "socket" ]; then
  /gnparser/bin/gnparse -server
else
  /gnparser-web/bin/gnparser-web
fi
