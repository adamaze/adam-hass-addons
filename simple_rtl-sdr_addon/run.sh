#!/usr/bin/with-contenv bashio
server=$(bashio::config 'server')
port=$(bashio::config 'port')
serial_number=$(bashio::config 'serial_number')
sensor_name=$(bashio::config 'sensor_name')
#
echo "using rtlamr to connect to $server:$port listening for data from $serial_number"
#
#
function report_to_ha() {
    curl -X POST -H "Authorization: Bearer ${SUPERVISOR_TOKEN}"   -H "Content-Type: application/json"   -d '{"state": "$consumption", "attributes": {"unit_of_measurement": "kWh"}}'   http://supervisor/core/api/states/sensor.$sensor_name
}
# loop forever
while true; do
    # run rtlamr in 'single' mode so that it returns as soon as it gets data on $serial_number
    consumption=/root/go/bin/rtlamr -filterid=$serial_number -format=json -server=$server:$port -single -filterid=$serial_number)
    echo $(date) $serial_number $consumption
    # report that data to home assistant
    report_to_ha
done
