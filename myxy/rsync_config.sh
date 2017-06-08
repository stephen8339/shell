#!/bin/sh
source /data/shell/myxy/config.sh
CONFDIR=/data/config
DISDIR=/data/server
DISBDIR=/data/server/build
#SVRHOST=( pvpiy1 crossiy1 crossiy2 logiciy1 logiciy2 logiciy3 logiciy4 logiciy5 logiciy6 logiciy7 logiciy8)
#SVRHOST=(logiciy3)


for k in ${SVRHOST[*]}
do
        echo -e "\n\nPUSH == $k config == \n"

        rsync -avzthP $CONFDIR/$k/conf root@$k:$DISDIR/target

	rsync -avzthP $CONFDIR/$k/conf root@$k:$DISBDIR/target

        if [ $? -eq 0 ];
                then
                        echo -e "\n== rsync $k config is complete ==";
                else
                        echo -e "\n== rsync $k config error ==";
        fi
done


