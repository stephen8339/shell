#!/bin/sh
cd /home/tags/ios_appstore_sdk
git pull
git tag | grep v | sed 's/v//g' > /data/shell/iosz/ioszsdktags
echo "#!/bin/sh" > /data/shell/iosz/ioszsdktagnew
echo -n "tag=" >> /data/shell/iosz/ioszsdktagnew
awk -F . '{print $1*1000000+$2*10000+$3*100+$4,$0}' /data/shell/iosz/ioszsdktags | sort -n -k 1 | awk '{print $2}' | tail -1>> /data/shell/iosz/ioszsdktagnew
