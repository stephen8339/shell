#!/bin/sh
source /data/shell/iosz/config.sh
CONFDIR=/data/tags/ios_appstore_server/conf/json
DISDIR=/data/server/target/conf
DISBDIR=/data/server/build/target/conf
#SVRHOST=( pvpiz crossiz1 logiciz1 logiciz2 )


for k in ${SVRHOST[*]}
do
        echo -e "\n\nPUSH == $k json == \n"

        rsync -avzthP $CONFDIR root@$k:$DISDIR
	
	rsync -avzthP $CONFDIR root@$k:$DISBDIR	

        if [ $? -eq 0 ];
                then
                        echo -e "\n== rsync $k json is complete ==";
                else
                        echo -e "\n== rsync $k json error ==";
        fi
done


