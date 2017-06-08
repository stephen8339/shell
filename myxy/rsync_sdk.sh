#!/bin/sh
source /data/shell/myxy/config.sh
SRCDIR=/data/server/target
SRCSQLDIR=/data/server/src
SDKSRCDIR=/data/tags/ios_myxy_sdk/target/*.war
SDKDISDIR=/data/tomcat/webapps/ROOT.war
CONFDIR=/data/config
TOOLDIR=/data/tools
DISDIR=/data/server/build
TOOLDIST=/data
#SDKHOST=( sdkiy1 sdkiy2 )


for j in ${SDKHOST[*]}
do
        echo -e "\n\nPUSH == $j == \n"

        rsync -avzthP $SDKSRCDIR root@$j:$SDKDISDIR --delete

        if [ $? -eq 0 ];
                then
                        echo -e "\n== rsync $j server is complete ==";
                else
                        echo -e "\n== rsync $j server error ==";
        fi

sleep 10

done



if [ $? -eq 0 ];
	then
		echo -e "\n\n===== Rsync ${HOST[*]} IS ALL Complete ====";
	else
		echo -e "\n\n===== rsync error ====";
fi

