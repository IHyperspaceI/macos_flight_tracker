#!/bin/bash
# run.sh

echo "Starting Server...";
./server/dump1090/dump1090 --write-json ./data/ > /dev/null 2>&1 &

echo "Starting Map...";
. ./bin/activate
. environment.sh
python3 src/app.py
