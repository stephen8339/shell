#!/bin/sh
source /data/shell/android/config.sh
CONFDIR=/data/config
DISDIR=/data/server
DISBDIR=/data/server/build
#SVRHOST=( pvpa crossa1 crossa2 logica1 logica2 logica3 logica4)
#SVRHOST=(logiciy3)


for k in ${SVRHOST[*]}
do
        echo -e "\n\nPUSH == $k config == \n"

	rsync -avzthP $CONFDIR/$k/conf root@$k:$DISBDIR/target

	rsync -avzthP $CONFDIR/$k/conf root@$k:$DISDIR/target

        if [ $? -eq 0 ];
                then
                        echo -e "\n== rsync $k config is complete ==";
                else
                        echo -e "\n== rsync $k config error ==";
        fi
done


