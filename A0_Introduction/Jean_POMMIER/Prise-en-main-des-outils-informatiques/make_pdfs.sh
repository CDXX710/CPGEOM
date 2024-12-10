#!/bin/bash

pandoc -V geometry:margin=35mm -o programme.pdf programme.md
pandoc -V geometry:margin=35mm -o notes.pdf notes.md
pandoc -V geometry:margin=35mm -o formationPriseEnMain.pdf readme.md \
    clavier/readme.md \
    windows/readme.md \
    linux/readme.md \
    BD/readme.md