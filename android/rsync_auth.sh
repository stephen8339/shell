#!/bin/sh
SRCDIR=/root/.ssh
DISDIR=/root
HOST=(sdk cross1 cross2 logic1 logic2 middle)

for i in ${HOST[*]}
do
	echo -e "\n\nPUSH == $i == \n"

	rsync -avzt $SRCDIR root@$i:$DISDIR --delete

done

if [ $? -eq 0 ];
	then
		echo rsync is complete;
	else
		echo rsync error;
fi
