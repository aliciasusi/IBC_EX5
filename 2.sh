#1: gender, yearsExperience, and wage for highest earner
#2: gender, yearsExperience, and wage for lowest earner 
#3: number of females in the top 10 earners 

echo "Gender, yearsExperience, wage for highest earner"
cut -d , -f 1,2,4 wages.csv | grep -v "gender" | sort -t "," -nrk3,3 | head -1

echo "gender, yearsExperience, and wage for lowest earner"
cut -d , -f 1,2,4 wages.csv | grep -v "gender" | sort -t "," -nrk3,3 | tail -1 

echo "number of females in the top 10 earners"
cut -d , -f 1,2,4 wages.csv | grep -v "gender" | sort -t "," -nrk3,3 | head -10 | grep "female" | wc -l 


