#!/bin/bash

set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

$DIR/../gradlew buildBaseImage buildCassandraImage

bash -c 'cd docker && docker-compose build && docker-compose up'

