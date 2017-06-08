#!/bin/sh
source /data/shell/myxy/config.sh
CONFDIR=/data/tags/ios_myxy_server/conf/json
DISDIR=/data/server/target/conf
DISBDIR=/data/server/build/target/conf
#SVRHOST=( pvpiy1 crossiy1 crossiy2 logiciy1 logiciy2 logiciy3 logiciy4 logiciy5 logiciy6 logiciy7 logiciy8)


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


