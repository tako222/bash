#!/bin/bash

VAR1=test
VAR2=$VAR1
VAR3=VAR1

echo '$VAR1->' $VAR1
echo '$VAR2->' $VAR2
echo '$VAR3->' $VAR3

# Execute command
eval 'ls -la'
