#!/bin/sh
cd /home/tags/ios_yueyu_server
git pull
git tag | grep cn_yueyu_ | sed 's/cn_yueyu_//g' > /data/shell/iosy/iosytags
echo "#!/bin/sh" > /data/shell/iosy/iosytagnew
echo -n "tag=" >> /data/shell/iosy/iosytagnew
awk -F . '{print $1*1000000+$2*10000+$3*100+$4,$0}' /data/shell/iosy/iosytags | sort -n -k 1 | awk '{print $2}' | tail -1>> /data/shell/iosy/iosytagnew
