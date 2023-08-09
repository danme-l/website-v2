#!/bin/bash

# find the PID's for each Process
FLASK_PID=$(lsof -t -i:5000)
REACT_PID=$(lsof -t -i:3000)

# kill Flask and React processes
if [[ -n $FLASK_PID ]]; then
    kill $FLASK_PID
fi

if [[ -n $REACT_PID ]]; then
    kill $REACT_PID
fi