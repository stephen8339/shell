#!/bin/bash
kill -9 'cat /var/log/swatch.pid'
swatch -c /etc/swatch/sdkwatch.conf -t /data/logfile/sdk/log/sdk.log & > /var/log/swatch.pid
