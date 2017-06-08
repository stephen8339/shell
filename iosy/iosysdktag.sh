#!/bin/sh
cd /home/tags/ios_yueyu_sdk
git pull
git tag | grep v | sed 's/v//g' > /data/shell/iosy/iosysdktags
echo "#!/bin/sh" > /data/shell/iosy/iosysdktagnew
echo -n "tag=" >> /data/shell/iosy/iosysdktagnew
awk -F . '{print $1*1000000+$2*10000+$3*100+$4,$0}' /data/shell/iosy/iosysdktags | sort -n -k 1 | awk '{print $2}' | tail -1>> /data/shell/iosy/iosysdktagnew
