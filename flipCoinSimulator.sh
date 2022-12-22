HeadWin=0;
TailWin=0;
while [[ $HeadWin -lt 21 && $TailWin -lt 21 ]]
do
	coin=$((RANDOM%2));

	if [ $coin -eq 0 ]
	then
		HeadWin=$(($HeadWin+1));
 		echo "Head";
	else
		TailWin=$(($TailWin+1));
		echo "Tail";
	fi
	
	if [ $HeadWin -eq $TailWin ]
	then
		HeadWin=0;
		TailWin=0;
	fi
   	
done

if [ $HeadWin -gt $TailWin ]
then
	echo "Head won by $HeadWin Point";	
	echo "Tail lose by $TailWin Point";
elif [ $TailWin -gt $HeadWin ]
then	
	echo "Tail won by $TailWin Point";
	echo "Head lose by $HeadWin Point";
else
	echo "Tie";
fi