#!/bin/bash 

var2="gs://testingdemo/test" 

gsutil ls $var2 | sed "s|$var2/||g"  > DAD

#gsutil ls -r gs://testingdemo/test >>Day 

grep -r ".zip" DAD | sed 's/.zip//g'  > DAD.csv 

#grep -r ".zip" set > asasa.csv
