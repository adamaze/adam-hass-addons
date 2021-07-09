#!/usr/bin/with-contenv bashio
my_var=$(bashio::config 'my_var')
server=$(bashio::config 'server')
port=$(bashio::config 'port')
serial_number=$(bashio::config 'serial_number')


echo "Hello world!"
echo "this is a test addon made by Adam"
echo the value of my_var from the config section is: $my_var
cd /
ls -la
/root/go/bin/rtlamr -filterid=$serial_number -format=json -server=$server:$port
