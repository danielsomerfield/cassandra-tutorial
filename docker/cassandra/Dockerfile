FROM thoughtworks/ubuntu-15-openjdk-8
MAINTAINER Daniel Somerfield <dsomerfi@thoughtworks.com>

RUN echo "deb http://debian.datastax.com/datastax-ddc 3.4 main" > /etc/apt/sources.list.d/cassandra.sources.list
RUN curl -L https://debian.datastax.com/debian/repo_key | apt-key add -
RUN apt-get update
RUN apt-get -y install datastax-ddc