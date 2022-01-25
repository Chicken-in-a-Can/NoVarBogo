#!/bin/bash
rm -rf fakevar
mkdir fakevar
cd fakevar
echo "How long of a list would you like sorted: "
echo "Press ctrl+d after inputting length and hitting enter"
echo "$(cat)" > len.txt
printf "Sorting..."
echo " 0 " > n.txt
echo "1" > c.txt
echo "0" > g.txt
echo "1" > bad.txt
while (( $(cat bad.txt) == 1 ))
do
	mkdir "$(cat c.txt)"
	echo "1" > s.txt
	while (( $(cat s.txt) <= $(cat len.txt) ))
	do
		echo "$(( $RANDOM % $(cat len.txt) + 1 ))" > he.txt
		while (( $(grep -c " $(cat he.txt) " n.txt) >= 1 ))
		do
			echo "$(( $RANDOM % $(cat len.txt) + 1 ))" > he.txt
		done
		echo " $(cat he.txt) " >> n.txt
		printf "$(cat he.txt)" > $(cat c.txt)/$(cat s.txt).txt
		echo "$(($(cat s.txt)+1))" > s.txt
	done
	echo "1" > b.txt
	while (( $(cat b.txt) < $(cat len.txt) ))
	do
		echo "$(($(cat b.txt)+1))" > q.txt
		if (( $(cat $(cat c.txt)/$(cat b.txt).txt) < $(cat $(cat c.txt)/$(cat q.txt).txt) ));then
			echo "$(($(cat g.txt)+1))" > g.txt
		fi
		echo "$(($(cat b.txt)+1))" > b.txt
	done
	echo "$(($(cat g.txt)+1))" > sg.txt
	if (( $(cat sg.txt) == $(cat len.txt) ));then
		echo "2" > bad.txt
		mv $(cat c.txt) ..
        fi
	echo "$(($(cat c.txt)+1))" > c.txt
	echo "0" > g.txt
	echo " 0 " > n.txt
done
cd ..
rm -rf fakevar
printf "\nSorted\n"
