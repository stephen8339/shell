#!/bin/sh
source /data/shell/android/config.sh
SRCDIR=/data/tags/android_zhongguo_server/target
SRCSQLDIR=/data/server/src
SDKSRCDIR=/data/sdk/target/*.war
SDKDISDIR=/data/tomcat/webapps/ROOT.war
CONFDIR=/data/config
TOOLDIR=/data/tools
DISDIR=/data/server/build
TOOLDIST=/data
#HOST=(sdkiy1 sdkiy2 pvpiy crossiy1 crossiy2 logiciy1 logiciy2 logiciy3)
#SVRHOST=( pvpa crossa1 crossa2 logica1 logica2 logica3 logica4)
#SDKHOST=( sdka1 )

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



