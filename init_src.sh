#!/bin/bash

echo "Source folder create..."
if [ -d ./src ]; then
    echo "src folder already exist"
else
    mkdir -p ./src
fi

if [ -d ./src/veni-api ]; then
    echo "veni-api already exist"
else
    cd ./src
    git clone https://github.com/kim5257app/veni-api.git
    cd -
fi

