#!/bin/bash

set -ev

pushd website

echo "Rebuilding website..." ;
rc=-1
while [[ $rc != 0 ]] ; do
    python build.py
    rc=$?
done

popd

sleep 1
browser-sync reload -p 3001

