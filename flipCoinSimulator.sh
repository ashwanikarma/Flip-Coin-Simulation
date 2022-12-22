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
<<<<<<< HEAD
=======
	
>>>>>>> ifTieGameContinues
   	
done
HeadWin=10;
TailWin=10;
if [ $HeadWin -gt $TailWin ]
then
	echo "Head won by $(($HeadWin-$TailWin)) Point";	
elif [ $TailWin -gt $HeadWin ]
then	
	echo "Tail won by $(($TailWin-$HeadWin)) Point";
else
	echo "Tie";
	HeadWin=0;
	TailWin=0;
	while [[ $(($HeadWin-$TailWin)) -lt 2 ]]
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
	done
	echo "Head= $HeadWin";
	echo "Tail= $TailWin";
fi