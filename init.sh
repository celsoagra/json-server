#!/bin/bash

srv_args="--port 80"

path="/data/$filename"

if [ -f $path ]; then
    echo "initialising $path"
    srv_args="$srv_args $path"
fi

json-server $srv_args