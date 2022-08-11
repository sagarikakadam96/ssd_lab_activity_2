#!/bin/bash
NAME=$1
awk -F "/" 'NR>1{print $NF}' $NAME
