#!/bin/bash

source d00-lib.sh

source cfg.sh

docker run \
    -d \
    --privileged \
    -h $DNAME \
    --name $DNAME \
    -v $DD:/host \
    gccarm \
    /bin/sh -c "while true; do date; sleep 30; done"
