#!/bin/sh
source /data/shell/android/config.sh
CONFDIR=/data/tags/android_zhongguo_server/conf/json
DISDIR=/data/server/target/conf
DISBDIR=/data/server/build/target/conf
#SVRHOST=( pvpa crossa1 crossa2 logica1 logica2 logica3 logica4)


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


