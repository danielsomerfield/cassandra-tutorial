# Cassandra Tutorial

Docker cluster to help with DataStax docker tutorial.

# Prerequisites
- docker-compose 1.6.x

- java 8

# Running
If you are on a Mac, you need to be in the docker environment. Generally this is done by starting the "docker quickstart terminal" and running the following commands from the terminal that opens:

    ╰─➤ bin/build-and-start.sh

This will build the images for docker and start a cluster of two nodes. You can stop it, by hitting ctrl-c in the terminal.

If you want to make changes, you do not need to ron the script since rebuilding all images may not be necessary. Instead, you can run the gradle commands manually to build the image for the Dockerfile you have changed. For changes to the cassandra config, you can just run

    ╰─➤ docker-compose build && docker-compose up
