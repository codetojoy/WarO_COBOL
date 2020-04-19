#!/bin/bash 

rm *.so waro 

set -e 

# procedures
cobc -o knuth-shuffle knuth-shuffle.cbl
cobc -o log-player log-player.cbl
cobc -o log-kitty log-kitty.cbl
cobc -o log-deck log-deck.cbl
cobc -o player-turn player-turn.cbl 

# main
cobc -x -o waro waro.cbl

./waro
