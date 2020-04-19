#!/bin/bash 

MY_HOME=/Users/measter/src/github/codetojoy/WarO_COBOL

docker run -it --name waro-cobol-instance  \
    -v $MY_HOME/src:/data \
    gregcoleman/docker-cobol
