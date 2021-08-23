#!/bin/sh
# This shell script updates the Orphanet - Orphadata track by downloading 
# the files listed in the makedoc and creating a time-stamped directory. 
# Two new bigBed files are generated, one for hg19 and one for hg38. 

# Make variable for parent directory
parentPath="/cluster/home/tmpereir/public_html/trackHubs/orphadata"

# Grab the timestamp at which script is ran
date=$(date)
date="${date// /_}"

# Make the new timestamp directory
mkdir "$date"

# cd into new directory
cd "$date"

# Download Orphadata files using wget
wget http://www.orphadata.org/data/xml/en_product6.xml
wget http://www.orphadata.org/data/xml/en_product4.xml
wget http://www.orphadata.org/data/xml/en_product9_prev.xml
wget http://www.orphadata.org/data/xml/en_product9_ages.xml

# run parseOrphadata.py with date as argument
# NOTE: This script generates two bed files, one for hg19 and one for hg38:

# orphadata.hg19.<timestamp>.bed
# orphadata.hg38.<timestamp>.bed

python3 "$parentPath/parseOrphadata.py" -t $date



