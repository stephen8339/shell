#!/bin/bash
#yueyu1.9 sql update
mysql -uroot -p4f83b93290c5379ef4910a4faecd1cdb6b7801f1920fe11940a50bf397bcaa64 -h10.10.35.49 obsidian-s1 < /data/tags/ios_yueyu_server/scripts/update_sql/1_9_obsidian.sql
echo "S1 OK!"
mysql -uroot -p4f83b93290c5379ef4910a4faecd1cdb6b7801f1920fe11940a50bf397bcaa64 -h10.10.35.49 obsidian-s2 < /data/tags/ios_yueyu_server/scripts/update_sql/1_9_obsidian.sql
echo "S2 OK!"
mysql -uroot -p4f83b93290c5379ef4910a4faecd1cdb6b7801f1920fe11940a50bf397bcaa64 -h10.10.35.49 obsidian-s3 < /data/tags/ios_yueyu_server/scripts/update_sql/1_9_obsidian.sql
echo "S3 OK!"
mysql -uroot -p4f83b93290c5379ef4910a4faecd1cdb6b7801f1920fe11940a50bf397bcaa64 -h10.10.35.49 obsidian-s4 < /data/tags/ios_yueyu_server/scripts/update_sql/1_9_obsidian.sql
echo "S4 OK!"
mysql -uroot -p4f83b93290c5379ef4910a4faecd1cdb6b7801f1920fe11940a50bf397bcaa64 -h10.10.35.49 obsidian-s5 < /data/tags/ios_yueyu_server/scripts/update_sql/1_9_obsidian.sql
echo "S5 OK!"
mysql -uroot -p4f83b93290c5379ef4910a4faecd1cdb6b7801f1920fe11940a50bf397bcaa64 -h10.10.35.49 obsidian-s6 < /data/tags/ios_yueyu_server/scripts/update_sql/1_9_obsidian.sql
echo "S6 OK!"
mysql -uroot -p4f83b93290c5379ef4910a4faecd1cdb6b7801f1920fe11940a50bf397bcaa64 -h10.10.35.49 obsidian-s7 < /data/tags/ios_yueyu_server/scripts/update_sql/1_9_obsidian.sql
echo "S7 OK!"
mysql -uroot -p4f83b93290c5379ef4910a4faecd1cdb6b7801f1920fe11940a50bf397bcaa64 -h10.10.35.49 obsidian-s8 < /data/tags/ios_yueyu_server/scripts/update_sql/1_9_obsidian.sql
echo "S8 OK!"
mysql -uroot -p4f83b93290c5379ef4910a4faecd1cdb6b7801f1920fe11940a50bf397bcaa64 -h10.10.35.49 obsidian-s9 < /data/tags/ios_yueyu_server/scripts/update_sql/1_9_obsidian.sql
echo "S9 OK!"
mysql -uroot -p4f83b93290c5379ef4910a4faecd1cdb6b7801f1920fe11940a50bf397bcaa64 -h10.10.35.49 obsidian-s10 < /data/tags/ios_yueyu_server/scripts/update_sql/1_9_obsidian.sql
echo "S10 OK!"
