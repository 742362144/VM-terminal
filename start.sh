#!/usr/bin/env bash

cd /root/VM-terminal
python vnc/vnclet.py restart

./utils/websockify/websockify.py --web ../../ --target-config ./token/token.conf 6080
