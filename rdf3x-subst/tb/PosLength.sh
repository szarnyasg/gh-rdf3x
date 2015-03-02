#!/bin/bash

../bin/rdf3xload db railway-xform-1.ttl
../bin/rdf3xquery db PosLength.sparql 2> /dev/null | tee /dev/tty | wc -l
