#!/system/bin/sh

# init.d support
rm -rf /data/local/tmp/last_log.txt
logcat -v time >> /data/local/tmp/last_log.txt
