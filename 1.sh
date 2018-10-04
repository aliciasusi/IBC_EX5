cat wages.csv | cut -d, -f 1,2 | sort -k 2,2n -n -d | grep -v gender | sed -E 's/,/ /g' | uniq

