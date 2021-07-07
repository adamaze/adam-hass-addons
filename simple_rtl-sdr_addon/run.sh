#!/usr/bin/with-contenv bashio
my_var=$(bashio::config 'my_var')

echo "Hello world!"
echo "this is a test addon made by Adam"
echo the value of my_var from the config section is: $my_var
cd /
ls -la
./rtlamr -filterid=34419315 -format=json -server=cenpi:1234
