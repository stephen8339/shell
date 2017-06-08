#!/bin/sh
cd /home/tags/ios_myxy_server
git pull
git tag | grep cn_fl_appstore_ | sed 's/cn_fl_appstore_//g' > /data/shell/myxy/iosmtags
echo "#!/bin/sh" > /data/shell/myxy/iosmtagnew
echo -n "tag=" >> /data/shell/myxy/iosmtagnew
awk -F . '{print $1*1000000+$2*10000+$3*100+$4,$0}' /data/shell/myxy/iosmtags | sort -n -k 1 | awk '{print $2}' | tail -1>> /data/shell/myxy/iosmtagnew
