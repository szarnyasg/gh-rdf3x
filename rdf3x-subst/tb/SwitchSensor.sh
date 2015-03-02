#!/bin/bash

time ../bin/rdf3xload db railway-xform-1.ttl

../bin/rdf3xquery db SwitchSensor.sparql 2> /dev/null > r.txt
wc -l r.txt
