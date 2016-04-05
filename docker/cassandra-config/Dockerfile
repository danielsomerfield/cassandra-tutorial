FROM thoughtworks/cassandra
MAINTAINER Daniel Somerfield <dsomerfi@thoughtworks.com>

COPY cassandra.yaml /etc/cassandra/cassandra.yaml
COPY start_cassandra.sh /sbin/start_cassandra.sh

ENTRYPOINT ["/sbin/start_cassandra.sh"]

