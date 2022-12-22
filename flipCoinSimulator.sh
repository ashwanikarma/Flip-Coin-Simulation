HeadWin=0;
TailWin=0;
for(( i=0; i<=100; i++ ))
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
	
	if [ $HeadWin -eq 21 || $TailWin -eq 21 ]
	then
		break;
	fi
done

if [ $HeadWin -gt $TailWin ]
then
	echo "Head won by $HeadWin Point";
elif [ $TailWin -gt $HeadWin ]
then	
	echo "Tail won by $TailWin Point";
else
	echo "Tie";
fi