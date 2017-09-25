#!/bin/bash

B=`date +%s`
docker build \
    -t gccarm \
    . 2>&1 | tee tmp-log.txt
E=`date +%s`
D=$[E-B]
echo "took: ${D}s"


