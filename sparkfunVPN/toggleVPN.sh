#!/bin/bash

capture=$(openvpn3 sessions-list)
compare="No sessions available"

if [ "$capture" = "$compare" ]; then
  printf "USER\nPW\n" | openvpn3 session-start --config SparkFun
else
  openvpn3 session-manage --disconnect --config SparkFun
fi
