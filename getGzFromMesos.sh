#!/bin/sh

for model in "$@"
do
 #wc $FILE1
 model=$model
ssh alashkov@mesos-vds.workfusion.com "tar -czf ~/$model.tar.gz /data/vds/eval/alashkov/$model/output/"
# ssh alashkov@mesos-vds.workfusion.com "tar -czf ~/$model.tar.gz /data/vds/eval/alashkov/$model/"
# scp alashkov@mesos-vds.workfusion.com:/home/alashkov/$model.tar.gz /home/alex/Downloads/
 scp alashkov@mesos-vds.workfusion.com:/home/alashkov/$model.tar.gz ./
done

