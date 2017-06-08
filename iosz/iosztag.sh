#!/bin/sh
cd /home/tags/ios_appstore_server
git pull
git tag | grep zh_ios_ | sed 's/zh_ios_//g' > /data/shell/iosz/iosztags
echo "#!/bin/sh" > /data/shell/iosz/iosztagnew
echo -n "tag=" >> /data/shell/iosz/iosztagnew
awk -F . '{print $1*1000000+$2*10000+$3*100+$4,$0}' /data/shell/iosz/iosztags | sort -n -k 1 | awk '{print $2}' | tail -1>> /data/shell/iosz/iosztagnew
