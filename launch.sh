#!/bin/bash

# server
cd server
source .venv/Scripts/activate
code .

flask run &

# front end
cd ../website-v2
code .
npm start