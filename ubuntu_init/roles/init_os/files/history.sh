#!/bin/bash

HISTSIZE=20000
USER_IP=`who -u am i 2>/dev/null| awk '{print $NF}'|sed -e 's/[()]//g'` 
if [ "$USER_IP" = "" ] 
 then 
   USER_IP=`hostname` 
fi
export HISTTIMEFORMAT="%F %T $USER_IP `whoami` : "
