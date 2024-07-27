#!/bin/bash
length=$1
LC_ALL=C tr -dc 'A-Za-z0-9!?%=' < /dev/urandom | head -c $((length)) > password.txt

