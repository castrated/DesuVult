#!/bin/bash
for i in {1..65535}; do (echo < /dev/tcp/127.0.0.1/$i) &>/dev/null && printf "\n\a[+] This fella has an open port at\n: \t%d\n" "$i" || printf "."; done
