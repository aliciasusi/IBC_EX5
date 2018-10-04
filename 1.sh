cat wages.csv | cut -d, -f 1,2 | sed -E 's/,/ /g' | sort -k1,1d -k2,2n | grep -v gender | uniq

