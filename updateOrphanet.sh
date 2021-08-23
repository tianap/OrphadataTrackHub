#!/bin/sh
# This shell script updates the Orphanet - Orphadata track by downloading 
# the files listed in the makedoc and creating a time-stamped directory. 
# Two new bigBed files are generated, one for hg19 and one for hg38. 

date=$(date)
echo "$date"