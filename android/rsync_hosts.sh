#!/bin/sh
SRCDIR=/etc/hosts
DISDIR=/etc
HOST=(sdk1 sdk2 cross1 cross2 logic1 logic2 pvp batch)

for i in ${HOST[*]}
do
	echo -e "\n\nPUSH == $i == \n"

	rsync -avzt $SRCDIR root@$i:$DISDIR

done

if [ $? -eq 0 ];
	then
		echo rsync is complete;
	else
		echo rsync error;
fi
