#!/bin/bash
if [[ -n "$_TZ" ]]
then
	ln -s /etc/localtime $_TZ
fi
/opt/couchdb/erts-9.3.3.14/bin/epmd
