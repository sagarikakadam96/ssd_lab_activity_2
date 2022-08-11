#!/bin/bash

#Store filepath 
NAME=$1

N=$(wc --lines <$NAME)

#To remove endline
N=$(($N-1))

#echo $N

M=$((((N/2))+1))

#echo $M

#Did not work
#awk 'NR==$M{print $0}' $1 



#Directly giving variable to NR didnt work
#awk 'NR==$M{print $0}' $NAME

awk -v "M=$M" 'NR==M{print $0}' $NAME

