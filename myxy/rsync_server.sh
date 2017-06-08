#!/bin/sh
source /data/shell/myxy/config.sh
SRCDIR=/data/tags/ios_myxy_server/target
SRCSQLDIR=/data/server/src
SDKSRCDIR=/data/sdk/target/*.war
SDKDISDIR=/data/tomcat/webapps/ROOT.war
CONFDIR=/data/config
TOOLDIR=/data/tools
DISDIR=/data/server/build
TOOLDIST=/data
#HOST=(sdkiy1 sdkiy2 pvpiy crossiy1 crossiy2 logiciy1 logiciy2 logiciy3)
#HOST=(sdkiy1 sdkiy2  pvpiy1 crossiy1 crossiy2 logiciy1 logiciy2 logiciy3 logiciy4 logiciy5 logiciy6 logiciy7 logiciy8)
#SVRHOST=( pvpiy1 crossiy1 crossiy1 crossiy2 logiciy1 logiciy2 logiciy3 logiciy4 logiciy5 logiciy6 logiciy7 logiciy8)
#SDKHOST=( sdkiy1 sdkiy2 )

for i in ${SVRHOST[*]}
do
	echo -e "\n\nPUSH == $i == \n"

	rsync -avzthP --exclude-from=/data/rsync_exclude/$i.list $SRCDIR root@$i:$DISDIR --delete

	if [ $? -eq 0 ];
        	then
			echo -e "\n== rsync $i server is complete ==";
        	else
                	echo -e "\n== rsync $i server error ==";
	fi
done

#for j in ${SDKHOST[*]}
#do
#        echo -e "\n\nPUSH == $j == \n"
#
#        rsync -avzthP $SDKSRCDIR root@$j:$SDKDISDIR --delete
#
#        if [ $? -eq 0 ];
#                then
#                        echo -e "\n== rsync $j sdk server is complete ==";
#                else
#                        echo -e "\n== rsync $j sdk server error ==";
#        fi
#done

for k in ${SVRHOST[*]}
do
        echo -e "\n\nPUSH == $k config == \n"

        rsync -avzthP $CONFDIR/$k/conf root@$k:$DISDIR/target

        if [ $? -eq 0 ];
                then
                        echo -e "\n== rsync $k config is complete ==";
                else
                        echo -e "\n== rsync $k config error ==";
        fi
done

for l in ${HOST[*]}
do
        echo -e "\n\nPUSH == $l Tools == \n"

        rsync -avzthP $TOOLDIR root@$l:$TOOLDIST

        if [ $? -eq 0 ];
                then
                        echo -e "\n== rsync $l Makefile is complete ==";
                else
                        echo -e "\n== rsync $l Makefile error ==";
        fi
done


if [ $? -eq 0 ];
	then
		echo -e "\n\n===== Rsync ${HOST[*]} IS ALL Complete ====";
	else
		echo -e "\n\n===== rsync error ====";
fi

