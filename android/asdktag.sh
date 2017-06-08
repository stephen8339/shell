#!/bin/sh
cd /data/tags/sdk
git pull
git tag | grep v | sed 's/v//g' > /data/shell/android/asdktags
echo "#!/bin/sh" > /data/shell/android/asdktagnew
echo -n "tag=" >> /data/shell/android/asdktagnew
awk -F . '{print $1*1000000+$2*10000+$3*100+$4,$0}' /data/shell/android/asdktags | sort -n -k 1 | awk '{print $2}' | tail -1>> /data/shell/android/asdktagnew
