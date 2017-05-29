#!/bin/bash

pylint --list-msgs | grep '^:' | awk '{print $2}' | cut -c 2-6

