#!/bin/bash
#android 1.7 -> 1.9 sql update
mysql -uroot -p4f83b93290c5379ef4910a4faecd1cdb6b7801f1920fe11940a50bf397bcaa64 -h10.10.80.234 obsidian-s1 < /data/tags/android_zhongguo_server/scripts/update_sql/1_8_obsidian.sql
mysql -uroot -p4f83b93290c5379ef4910a4faecd1cdb6b7801f1920fe11940a50bf397bcaa64 -h10.10.80.234 obsidian-s1 < /data/tags/android_zhongguo_server/scripts/update_sql/1_9_obsidian.sql
echo "AS1 OK!"
mysql -uroot -p4f83b93290c5379ef4910a4faecd1cdb6b7801f1920fe11940a50bf397bcaa64 -h10.10.80.234 obsidian-s2 < /data/tags/android_zhongguo_server/scripts/update_sql/1_8_obsidian.sql
mysql -uroot -p4f83b93290c5379ef4910a4faecd1cdb6b7801f1920fe11940a50bf397bcaa64 -h10.10.80.234 obsidian-s2 < /data/tags/android_zhongguo_server/scripts/update_sql/1_9_obsidian.sql
echo "AS2 OK!"
mysql -uroot -p4f83b93290c5379ef4910a4faecd1cdb6b7801f1920fe11940a50bf397bcaa64 -h10.10.80.234 obsidian-s3 < /data/tags/android_zhongguo_server/scripts/update_sql/1_8_obsidian.sql
mysql -uroot -p4f83b93290c5379ef4910a4faecd1cdb6b7801f1920fe11940a50bf397bcaa64 -h10.10.80.234 obsidian-s3 < /data/tags/android_zhongguo_server/scripts/update_sql/1_9_obsidian.sql
echo "AS3 OK!"
mysql -uroot -p4f83b93290c5379ef4910a4faecd1cdb6b7801f1920fe11940a50bf397bcaa64 -h10.10.80.234 obsidian-s4 < /data/tags/android_zhongguo_server/scripts/update_sql/1_8_obsidian.sql
mysql -uroot -p4f83b93290c5379ef4910a4faecd1cdb6b7801f1920fe11940a50bf397bcaa64 -h10.10.80.234 obsidian-s4 < /data/tags/android_zhongguo_server/scripts/update_sql/1_9_obsidian.sql
echo "AS4 OK!"
mysql -uroot -p4f83b93290c5379ef4910a4faecd1cdb6b7801f1920fe11940a50bf397bcaa64 -h10.10.80.234 obsidian-s5 < /data/tags/android_zhongguo_server/scripts/update_sql/1_8_obsidian.sql
mysql -uroot -p4f83b93290c5379ef4910a4faecd1cdb6b7801f1920fe11940a50bf397bcaa64 -h10.10.80.234 obsidian-s5 < /data/tags/android_zhongguo_server/scripts/update_sql/1_9_obsidian.sql
echo "AS5 OK!"
mysql -uroot -p4f83b93290c5379ef4910a4faecd1cdb6b7801f1920fe11940a50bf397bcaa64 -h10.10.80.234 obsidian-s6 < /data/tags/android_zhongguo_server/scripts/update_sql/1_8_obsidian.sql
mysql -uroot -p4f83b93290c5379ef4910a4faecd1cdb6b7801f1920fe11940a50bf397bcaa64 -h10.10.80.234 obsidian-s6 < /data/tags/android_zhongguo_server/scripts/update_sql/1_9_obsidian.sql
echo "AS6 OK!"
mysql -uroot -p4f83b93290c5379ef4910a4faecd1cdb6b7801f1920fe11940a50bf397bcaa64 -h10.10.80.234 obsidian-s7 < /data/tags/android_zhongguo_server/scripts/update_sql/1_8_obsidian.sql
mysql -uroot -p4f83b93290c5379ef4910a4faecd1cdb6b7801f1920fe11940a50bf397bcaa64 -h10.10.80.234 obsidian-s7 < /data/tags/android_zhongguo_server/scripts/update_sql/1_9_obsidian.sql
echo "AS7 OK!"
