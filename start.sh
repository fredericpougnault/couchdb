#!/bin/bash
if [[ -n "$_TZ" ]]
then
        ln -sf /usr/share/zoneinfo/$_TZ /etc/localtime
fi
/opt/couchdb/bin/couchdb

