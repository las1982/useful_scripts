#!/bin/sh
FILES="train_all21k.csv .RData"
echo "no compression"
time tar -cf files.tar $FILES
echo "tar gzip"
time tar -cjf files.tar.gz $FILES
echo "tar bzip2"
time tar -cjf files.tar.bz2 $FILES
echo "pigz -1"
time pigz -cr -1  files.tar > files_pz1.tar.gz
echo "gzip -1"
time gzip -cr -1  files.tar > files_gz1.tar.gz 
echo "bzip2 -1"
time bzip22 -cr -1  files.tar > files_bz2-1.tar.bz2

echo "pigz -1 -z"
time pigz -crz -1  files.tar > files_pz1z.tar.gz
