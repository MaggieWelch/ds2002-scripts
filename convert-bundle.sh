#!/bin/bash

curl -Os https://s3.amazonaws.com/ds2002-resources/labs/stock_data.tsv
#Upon running code, errors occured with using tar to decompress/open the file
#After conferring with chatGBT, it says the file is not compressed and tar is unneeded, and removing the line fixed the error.  
#tar -xvf stock_data.tsv is the code I would have used
cat stock_data.tsv | tr -s '\n' > stock_file.tsv
tr "\t" "," <stock_file.tsv> stock_data.csv
lines=$(tail -n +2 stock_data.csv | wc -l)
echo "Number of data lines (excluding header): $lines"
tar -czvf converted-archive.tar.gz stock_data.csv
echo "Conversion complete!"
