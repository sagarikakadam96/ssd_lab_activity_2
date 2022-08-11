#!/bin/bash
NAME=$1
awk -F "/" '{print $NF}' $NAME
