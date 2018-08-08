#!/bin/sh
dir=$1
echo "Syncing $dir on HP to Dell"
rsync -arv --progress alex@1.1.1.1:/home/alex/work/$dir /home/alex/work/
