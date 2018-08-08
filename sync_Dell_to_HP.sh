#!/bin/sh
dir=$1
echo "Syncing $dir on Dell to HP"
rsync -arv --progress /home/alex/work/$dir alex@1.1.1.1:/home/alex/work/
