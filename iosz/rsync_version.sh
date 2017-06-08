#!/bin/sh
source /data/shell/iosz/config.sh
SRCDIR=/home/tags/ios_appstore_server/conf/logic/version.json
DISDIR=/data/server/target/conf/logic/
DISBUILDDIR=/data/server/build/target/conf/logic/
LOGICHOST=( logiciz1 logiciz2 )


for j in ${LOGICHOST[*]}
do
        echo -e "\n\nPUSH == $j == \n"

        rsync -avzthP $SRCDIR root@$j:$DISDIR --delete

        if [ $? -eq 0 ];
                then
                        echo -e "\n== rsync $j version is complete ==";
                else
                        echo -e "\n== rsync $j version error ==";
        fi


done

for k in ${LOGICHOST[*]}
do
        echo -e "\n\nPUSH == $k == \n"

        rsync -avzthP $SRCDIR root@$k:$DISBUILDDIR --delete

        if [ $? -eq 0 ];
                then
                        echo -e "\n== rsync $k version is complete ==";
                else
                        echo -e "\n== rsync $k version error ==";
        fi


done



if [ $? -eq 0 ];
	then
		echo -e "\n\n===== Rsync ${LOGICHOST[*]} IS ALL Complete ====";
	else
		echo -e "\n\n===== rsync error ====";
fi

