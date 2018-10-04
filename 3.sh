#difference in minumum wage for yearsexperience 12 and 16

VARA=$(cut -d , -f 2,4 wages.csv | grep "12," | sort -t "," -nk 2,2 | head -1 | cut -d , -f 2)
VARB=$(cut -d , -f 2,4 wages.csv | grep "16," | sort -t "," -nk 2,2 | head -1 | cut -d , -f 2)
echo $VARA
echo $VARB

echo $VARA -$VARB | bc

