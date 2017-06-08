#!/bin/sh
cd /home/tags/ios_myxy_sdk
git pull
git tag | grep v | sed 's/v//g' > /data/shell/myxy/iosmsdktags
echo "#!/bin/sh" > /data/shell/myxy/iosmsdktagnew
echo -n "tag=" >> /data/shell/myxy/iosmsdktagnew
awk -F . '{print $1*1000000+$2*10000+$3*100+$4,$0}' /data/shell/myxy/iosmsdktags | sort -n -k 1 | awk '{print $2}' | tail -1>> /data/shell/myxy/iosmsdktagnew
