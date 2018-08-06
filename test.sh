#!/bin/sh
FILES="train/*"
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
#echo "bzip2 -1"
#time bzip2 -cr -1  files.tar > files_bz2-1.tar.bz2

echo "pigz -1 -z"
time pigz -crz -1  files.tar > files_pz1z.tar.gz

echo "pigz -3 -z"
time pigz -crz -3  files.tar > files_pz3z.tar.gz
echo "pigz -6 -z"
time pigz -crz -6  files.tar > files_pz6z.tar.gz
echo "pigz -9"
time pigz -cr -9  files.tar > files_pz9.tar.gz
echo "pigz -9 -z"
time pigz -crz -9  files.tar > files_pz9z.tar.gz
