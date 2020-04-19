
WarO_COBOL
=========

* a COBOL submission for War-O as a code exercise
* This is not a serious venture!
* With the demand for COBOL during the pandemic, I thought it would be interesting to "kick the tires" a bit. (I took one semester of COBOL, centuries ago).
* Caveat Emptor:
    - No unit tests. There are frameworks and it is painful to work without a harness, but I'm not that invested to configure a framework.
    - Probably not idiomatic
    - Horribly hard-coded to 3 players; mortifyingly magic numbers
    - Stupefyingly simple strategy (all players use 'next card')

### Viewing Code

* The 'main' program is [here](./src/waro.cbl).

### Starting Docker

* using [1], download image from docker: `docker pull gregcoleman/docker-cobol`
* edit folder in `run.sh` as appropriate 
* to use image: `./run.sh`

### Run example 1

* at prompt in image: `cd /data`
* at prompt in image: `./run_waro.sh`

### Re-starting Docker

* to re-enter image after exiting: `./re-enter.sh`

Rules:
---------

Rules are [here](Rules.md).

### Resources

* [1] - https://hub.docker.com/r/gregcoleman/docker-cobol/
* [2] - https://medium.com/@yvanscher/7-cobol-examples-with-explanations-ae1784b4d576
