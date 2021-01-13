#!/bin/sh
set -e

/usr/sbin/nscd

if [ $ENDPOINT ];then
    until curl --head $ENDPOINT ; do echo Waiting for Sidecar; sleep 1 ; done ; echo Sidecar available;
else
   sleep 1
fi

exec "$@"
