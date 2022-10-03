#!/bin/bash
ping 192.168.1.10 > /dev/null 2>&1
echo $?