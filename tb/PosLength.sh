#!/bin/bash

../bin/rdf3xload db railway-xform-1.ttl
../bin/rdf3xquery db PosLength.sparql | tee | wc -l