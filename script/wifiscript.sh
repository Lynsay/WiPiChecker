#!/bin/bash
#Script to check wifi status
#Written June 2014
#Author Lynsay A. Shepherd
 
TESTIP=8.8.8.8
 
ping -c4 ${TESTIP} > /dev/null
 
if [ $? != 0 ]
then
    logger -t $0 "Your wifi has gone down- run ifup"
    ifdown --force wlan0
    ifup wlan0
else
        logger -t $0 "Your wifi is ok just now"
fi
