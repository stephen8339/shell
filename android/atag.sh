#!/bin/sh
cd /data/tags/server
git pull
git tag | grep jp_android_ | sed 's/jp_android_//g' > /data/shell/android/atags
echo "#!/bin/sh" > /data/shell/android/atagnew
echo -n "tag=" >> /data/shell/android/atagnew
awk -F . '{print $1*1000000+$2*10000+$3*100+$4,$0}' /data/shell/android/atags | sort -n -k 1 | awk '{print $2}' | tail -1>> /data/shell/android/atagnew
