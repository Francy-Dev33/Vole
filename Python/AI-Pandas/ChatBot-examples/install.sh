#!/bin/bash 


cd scripts

./scripts & 
goPID=$!

python3 main.py &
goPID=$!


wait $pythonPID
wait $goPID
