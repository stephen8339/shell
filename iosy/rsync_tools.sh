#!/bin/sh
SRCDIR=/data/tags/android_zhongguo_server/target
SRCSQLDIR=/data/server/src
SDKSRCDIR=/data/sdk/target/*.war
SDKDISDIR=/data/tomcat/webapps/ROOT.war
CONFDIR=/data/config
TOOLDIR=/data/tools
DISDIR=/data/server/build
TOOLDIST=/data
#HOST=(sdkiy1 sdkiy2 pvpiy crossiy1 crossiy2 logiciy1 logiciy2 logiciy3)
HOST=( stageiy pvpiy1 crossiy1 crossiy2 logiciy1 logiciy2 logiciy3 logiciy4 logiciy5 logiciy6 logiciy7 logiciy8)
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



