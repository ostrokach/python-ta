#!/bin/bash

set -v

cd website

while inotifywait -e create -e modify index.md ; do 
    echo "regenerating..." ; 
    rc=-1
    while [[ $rc != 0 ]] ; do
        python build.py	
	rc=$?
    done
done

cd ..

