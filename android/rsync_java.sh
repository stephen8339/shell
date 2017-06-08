#!/bin/sh
SRCDIR=/root/jdk-7u25-linux-x64.gz
DISDIR=/root
HOST=(sdk cross1 logic2)

for i in ${HOST[*]}
do
        echo -e "\n\nPUSH == $i == \n"

        rsync -avzthP $SRCDIR root@$i:$DISDIR --delete

        if [ $? -eq 0 ];
                then
                        echo -e "\n== rsync $i is complete ==";
                else
                        echo -e "\n== rsync error ==";
        fi
done

if [ $? -eq 0 ];
        then
                echo -e "\n\n===== Rsync ${HOST[*]} IS ALL Complete ====";
        else
                echo -e "\n\n===== rsync error ====";
fi
