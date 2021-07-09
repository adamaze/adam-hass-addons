#!/usr/bin/with-contenv bashio
server=$(bashio::config 'server')
port=$(bashio::config 'port')
serial_number=$(bashio::config 'serial_number')
#
#
echo "using rtlamr to connect to $server:$port listening for data from $serial_number"
/root/go/bin/rtlamr -filterid=$serial_number -format=json -server=$server:$port
