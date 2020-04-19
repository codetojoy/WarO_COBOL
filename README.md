
WarO_COBOL
=========

* a COBOL submission to [PEI Devs](https://github.com/peidevs/Resources/blob/master/Examples.md) for War-O as a code exercise
* This is not a serious venture!
* With the demand for COBOL during the pandemic, I thought it would be interesting to "kick the tires" a bit. (I took one semester of COBOL, centuries ago).
* Caveat Emptor:
    - No unit tests. There are frameworks and it is painful to work without a harness, but I'm not that invested to configure a framework.
    - Probably not idiomatic, esp. with regard to data structures
    - Horribly hard-coded to 3 players; mortifyingly magic numbers

### Viewing Code

* The 'main' program is [here](./src/waro.cbl).
* The [build script](./src/run_waro.sh) might be informative.

### Starting Docker

* A prerequisite is Docker (e.g. [Docker Desktop](https://www.docker.com/products/docker-desktop))
* In Docker terminal, download image [1]: `docker pull gregcoleman/docker-cobol`
    * this uses GnuCOBOL [3]
* edit folder in `run.sh` as appropriate for your machine 
* to start container: `./run.sh`

### Run game

* at prompt, in Docker container: `cd /data`
* at prompt, in Docker container: `./run_waro.sh`

### Re-starting Docker

* to re-enter container after exiting: `./re-enter.sh`

Rules:
---------

Game rules are [here](Rules.md).

### Resources

* [1] - [Docker image](https://hub.docker.com/r/gregcoleman/docker-cobol/)
* [2] - [tutorial](https://medium.com/@yvanscher/7-cobol-examples-with-explanations-ae1784b4d576)
* [3] - [GnuCOBOL](https://en.wikipedia.org/wiki/GnuCOBOL)
