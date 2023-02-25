#!/bin/bash

set -u # to verify variables are defined
: $ACC_EXEC
: $MACHX1
: $MACHX2

# Set ovsdb_addr in order to access OVSDB
echo "Set ovsdb_addr in order to access OVSDB"
$ACC_EXEC curl -X PUT -d '"tcp:127.0.0.1:6632"' http://127.0.0.1:8080/v1.0/conf/switches/0000000000000001/ovsdb_addr

# Set queues
echo "Set Queues"
$ACC_EXEC curl -X POST -d '{"port_name": "vxlanacc", "type": "linux-htb", "max_rate": "12000000", "queues": [{"max_rate": "4000000"}, {"min_rate": "8000000"}]}' http://127.0.0.1:8080/qos/queue/0000000000000001

#Set QoS rules
echo "Set QoS rules"
$ACC_EXEC curl -X POST -d '{"match": {"dl_dst": "'${MACHX1}'", "dl_type": "IPv4", "nw_proto": "TCP"}, "actions":{"queue": "1"}}' http://127.0.0.1:8080/qos/rules/0000000000000001
$ACC_EXEC curl -X POST -d '{"match": {"dl_dst": "'${MACHX2}'", "dl_type": "IPv4", "nw_proto": "TCP"}, "actions":{"queue": "0"}}' http://127.0.0.1:8080/qos/rules/0000000000000001

# Get Rules of QoS
#$ACC_EXEC curl -X GET http://127.0.0.1:8080/qos/rules/0000000000000001
