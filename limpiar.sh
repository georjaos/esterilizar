# !/bin/bash
CONTADOR=0
echo proceso ejecutandose cancelelo con Ctrl+c
while [  $CONTADOR -lt $1 ]; do
      dd if=/dev/zero of=$2 bs=$3
      dd if=/dev/urandom of=$2 bs=$3
      echo Repeticion $((CONTADOR+1))
      let CONTADOR=CONTADOR+1 
done
