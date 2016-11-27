#!/bin/bash

# super easy to use test server script

if [ $# -eq 1 ] ;
    then
        echo "\n\n Your test web server is available in your browser at localhost:$1\n\n"
        twistd -n web -p $1 --path .
else 
    echo "\n\n Your test web server is available in your browser at localhost:8888\n\n"
        twistd -n web -p 8888 --path .
fi

