#!/bin/bash
input=$(date "+%d%m%Y").tar
tar -cf /tmp/$input task1.sh task2.sh MyDirectory/
