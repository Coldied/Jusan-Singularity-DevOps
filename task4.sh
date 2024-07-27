#!/bin/bash
tar -cf archive.tar task1.sh task2.sh MyDirectory/
tar -tf archive.tar &> /dev/null; echo $?
tar -xvf archive.tar
