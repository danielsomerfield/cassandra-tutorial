#!/bin/bash

LISTEN_ADDRESS=$(host -t a $(hostname) | awk '{print $4}' | egrep ^[1-9])
SEED_IP_1=$(host -t a cassandra_1 | awk '{print $4}' | egrep ^[1-9])
SEED_IP_2=$(host -t a cassandra_2 | awk '{print $4}' | egrep ^[1-9])

sed -i "s/- seeds: \"127.0.0.1\"/- seeds: \"$SEED_IP_1,$SEED_IP_2\"/" /etc/cassandra/cassandra.yaml;
sed -i "s/listen_address: localhost/listen_address: $LISTEN_ADDRESS/" /etc/cassandra/cassandra.yaml;

/usr/sbin/cassandra -f -R