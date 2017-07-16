#!/bin/bash

set -x

ls website

echo "establishing watchers"
while inotifywait -e create -e modify website/index.md website/pyta_template.html website/styles/main.css ; do 
    echo "Rebuilding website..."
    pushd website
    rc=-1
    while [[ $rc != 0 ]] ; do
        python build.py
	rc=$?
    done
    popd
    sleep 1
    browser-sync reload -p 3001
done
echo "done with inotify"

