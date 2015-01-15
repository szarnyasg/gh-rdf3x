#!/bin/bash

time ../bin/rdf3xload db railway-xform-1.ttl

time (
../bin/rdf3xquery db SwitchSensor.sparql 2> /dev/null | sort > r1.txt
../bin/rdf3xquery db SwitchSensor-neg.sparql 2> /dev/null | sort > r2.txt
comm -23 r1.txt r2.txt > r.txt
wc -l r.txt
)
