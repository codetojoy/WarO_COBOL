#!/bin/bash 

# clean 

rm *.so waro 

set -e 

# compile procedures
cobc -o knuth-shuffle knuth-shuffle.cbl
cobc -o log-player log-player.cbl
cobc -o log-kitty log-kitty.cbl
cobc -o log-deck log-deck.cbl
cobc -o player-turn player-turn.cbl 
cobc -o strategy-next strategy-next.cbl 
cobc -o strategy-max strategy-max.cbl 
cobc -o strategy-nearest strategy-nearest.cbl 

# compile main
cobc -x -o waro waro.cbl

# run program 
./waro
