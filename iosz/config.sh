#!/bin/bash
LOGICHOST=(logiciz1 logiciz2)
SDKHOST=(sdkiz1)
CROSSHOST=(crossiz1) 
PVPHOST=(pvpiz)
HOST=(sdkiz1 pvpiz crossiz1 logiciz1 logiciz2)
SVRHOST=( pvpiz crossiz1 logiciz1 logiciz2)
DEBUGLOG=/data/log/debug.log
ACCESSLOG=/data/log/access.log
RECLOG=/data/log/record.log
FLOWLOG=/data/log/flow.log
FBLOG=/data/log/feedback.log
SLOWLOG=/data/log/slow.log
PAYLOG=/data/log/payment.log
SDKDEBUGLOG=/data/log/debug.log
SDKRECLOG=/data/log/record.log
SDKACCLOG=/data/log/access.log
SDKFBLOG=/data/log/feedback.log
LOGICAPPPATH=/data/server/target/conf/logic/app.json
LOGICMYPATH=/data/server/target/conf/logic/mybatis.properties
LOGICCRPATH=/data/server/target/conf/logic/crossrealm.json
LOGICMEMPATH=/data/server/target/conf/logic/memcache.json
LOGICJSONPATH=/data/server/target/conf/json
CROSSAPPPATH=/data/server/target/conf/crossrealm/app.json
CROSSBRPATH=/data/server/target/conf/crossrealm/bridge.json
CROSSIDPATH=/data/server/target/conf/crossrealm/id_dict.json
CROSSJSONPATH=/data/server/target/conf/json
PVPAPPPATH=/data/server/target/conf/pvp_match/app.json
PVPBRPATH=/data/server/target/conf/pvp_match/bridge.json
PVPIDPATH=/data/server/target/conf/pvp_match/id_dict.json
QUARTZPATH=/data/server/target/conf/quartz.properties
#=============LOGIC DB================
LOGICDBUSR=root
LOGICDBPW="4f83b93290c5379ef4910a4faecd1cdb6b7801f1920fe11940a50bf397bcaa64"
#=============logic1 CFG================
logiciz1DEV=true
logiciz1GM=false
logiciz1ID=1
logiciz1=10.10.137.130
logiciz1NAME=大闹天宫
logiciz1CLPORT=8888
logiciz1MPORT=8887
logiciz1SKEEPTIME=60
logiciz1STHREADNUMC=1000
logiciz1STHREADNUMM=2000
logiciz1HTHREADNUMC=100
logiciz1HTHREADNUMM=500
logiciz1IDLE=150
logiciz1PID=/data/log/logic.pid
logiciz1DB=10.10.96.198
logiciz1DBPORT=3306
logiciz1DBNAME=logiciz1
logiciz1INIT=100
logiciz1ACTIVE=2000
logiciz1MAXW=30000
logiciz1MAXA=1000
logiciz1MINI=100
logiciz1MAXI=100
logiciz1REMAT=180
logiciz1RMILLIS=10000
logiciz1NUMRUN=10
logiciz1TMILLIS=1800000
logiciz1QUERY=1000
logiciz1KEY=obsidian
logiciz1LIMIT=3000
#=============logic1 REDIS================
logiciz1RHOST=10.10.126.132
logiciz1RPORT=6379
logiciz1RDB=1
logiciz1RMIN=100
logiciz1RMAX=100
logiciz1RMAXT=1000
logiciz1RMAXW=2000
logiciz1RT=true
logiciz1RSHOST=10.10.126.132
logiciz1RSPORT=6379
logiciz1RSDB=2
logiciz1RSMIN=1
logiciz1RSMAX=20
logiciz1RSMAXT=50
logiciz1RSMAXW=2000
logiciz1RST=true
#=============logic2 CFG================
logiciz2DEV=false
logiciz2GM=false
logiciz2ID=2
logiciz2=10.10.137.130
logiciz2NAME=腾云驾雾
logiciz2CLPORT=9999
logiciz2MPORT=9998
logiciz2SKEEPTIME=60
logiciz2STHREADNUMC=1000
logiciz2STHREADNUMM=2000
logiciz2HTHREADNUMC=100
logiciz2HTHREADNUMM=500
logiciz2IDLE=150
logiciz2PID=/data/log/logic.pid
logiciz2DB=10.10.96.198
logiciz2DBPORT=3306
logiciz2DBNAME=logiciz2
logiciz2INIT=100
logiciz2ACTIVE=2000
logiciz2MAXW=30000
logiciz2MAXA=1000
logiciz2MINI=100
logiciz2MAXI=100
logiciz2REMAT=180
logiciz2RMILLIS=10000
logiciz2NUMRUN=10
logiciz2TMILLIS=1800000
logiciz2QUERY=1000
logiciz2KEY=obsidian
logiciz2LIMIT=3000
#=============logic2 REDIS================
logiciz2RHOST=10.10.126.132
logiciz2RPORT=6379
logiciz2RDB=3
logiciz2RMIN=100
logiciz2RMAX=100
logiciz2RMAXT=1000
logiciz2RMAXW=2000
logiciz2RT=true
logiciz2RSHOST=10.10.126.132
logiciz2RSPORT=6379
logiciz2RSDB=2
logiciz2RSMIN=1
logiciz2RSMAX=20
logiciz2RSMAXT=50
logiciz2RSMAXW=2000
logiciz2RST=true
#=============logic3 CFG================
logiciz3DEV=false
logiciz3GM=false
logiciz3ID=3
logiciz3=10.10.92.150
logiciz3NAME=AppStoresrv3
logiciz3CLPORT=8888
logiciz3MPORT=8887
logiciz3SKEEPTIME=60
logiciz3STHREADNUMC=1000
logiciz3STHREADNUMM=2000
logiciz3HTHREADNUMC=100
logiciz3HTHREADNUMM=500
logiciz3IDLE=150
logiciz3PID=/data/log/logic.pid
logiciz3DB=10.10.89.175
logiciz3DBPORT=3306
logiciz3DBNAME=obsidian-s3
logiciz3INIT=100
logiciz3ACTIVE=2000
logiciz3MAXW=30000
logiciz3MAXA=1000
logiciz3MINI=100
logiciz3MAXI=100
logiciz3REMAT=180
logiciz3RMILLIS=10000
logiciz3NUMRUN=10
logiciz3TMILLIS=1800000
logiciz3QUERY=1000
logiciz3KEY=obsidian
logiciz3LIMIT=3000
#=============logic3 REDIS================
logiciz3RHOST=10.10.111.247
logiciz3RPORT=6379
logiciz3RMIN=100
logiciz3RMAX=100
logiciz3RMAXT=1000
logiciz3RMAXW=2000
logiciz3RT=true
logiciz3RSHOST=10.10.85.217
logiciz3RSPORT=6379
logiciz3RSMIN=1
logiciz3RSMAX=20
logiciz3RSMAXT=50
logiciz3RSMAXW=2000
logiciz3RST=true
#=============logic4 CFG================
logiciz4DEV=false
logiciz4GM=false
logiciz4ID=4
logiciz4=10.10.110.25
logiciz4NAME=AppStoresrv4
logiciz4CLPORT=8888
logiciz4MPORT=8887
logiciz4SKEEPTIME=60
logiciz4STHREADNUMC=1000
logiciz4STHREADNUMM=2000
logiciz4HTHREADNUMC=100
logiciz4HTHREADNUMM=500
logiciz4IDLE=150
logiciz4PID=/data/log/logic.pid
logiciz4DB=10.10.89.175
logiciz4DBPORT=3306
logiciz4DBNAME=obsidian-s4
logiciz4INIT=100
logiciz4ACTIVE=2000
logiciz4MAXW=30000
logiciz4MAXA=1000
logiciz4MINI=100
logiciz4MAXI=100
logiciz4REMAT=180
logiciz4RMILLIS=10000
logiciz4NUMRUN=10
logiciz4TMILLIS=1800000
logiciz4QUERY=1000
logiciz4KEY=obsidian
logiciz4LIMIT=3000
#=============logic4 REDIS================
logiciz4RHOST=10.10.107.117
logiciz4RPORT=6379
logiciz4RMIN=100
logiciz4RMAX=100
logiciz4RMAXT=1000
logiciz4RMAXW=2000
logiciz4RT=true
logiciz4RSHOST=10.10.85.217
logiciz4RSPORT=6379
logiciz4RSMIN=1
logiciz4RSMAX=20
logiciz4RSMAXT=50
logiciz4RSMAXW=2000
logiciz4RST=true
#=============logic5 CFG================
logiciz5DEV=false
logiciz5GM=false
logiciz5ID=5
logiciz5=10.10.104.174
logiciz5NAME=AppStoresrv5
logiciz5CLPORT=8888
logiciz5MPORT=8887
logiciz5SKEEPTIME=60
logiciz5STHREADNUMC=1000
logiciz5STHREADNUMM=2000
logiciz5HTHREADNUMC=100
logiciz5HTHREADNUMM=500
logiciz5IDLE=150
logiciz5PID=/data/log/logic.pid
logiciz5DB=10.10.89.175
logiciz5DBPORT=3306
logiciz5DBNAME=obsidian-s5
logiciz5INIT=100
logiciz5ACTIVE=2000
logiciz5MAXW=30000
logiciz5MAXA=1000
logiciz5MINI=100
logiciz5MAXI=100
logiciz5REMAT=180
logiciz5RMILLIS=10000
logiciz5NUMRUN=10
logiciz5TMILLIS=1800000
logiciz5QUERY=1000
logiciz5KEY=obsidian
logiciz5LIMIT=3000
#=============logic5 REDIS================
logiciz5RHOST=10.10.107.224
logiciz5RPORT=6379
logiciz5RMIN=100
logiciz5RMAX=100
logiciz5RMAXT=1000
logiciz5RMAXW=2000
logiciz5RT=true
logiciz5RSHOST=10.10.85.217
logiciz5RSPORT=6379
logiciz5RSMIN=1
logiciz5RSMAX=20
logiciz5RSMAXT=50
logiciz5RSMAXW=2000
logiciz5RST=true
#============cross1 CFG================
crossiz1GM=false
crossiz1IP=10.10.134.7
crossiz1ID=1
crossiz1PORT=8881
crossiz1PT=8880
crossiz1PID=/data/log/crossrealm.pid
crossiz1NUM=1000
#=============LB CFG===============
LB=10.10.126.132
LBPORT=80
#=============SDK DB================
SDKDB=10.10.96.198
SDKPORT=3306
SDKDBUSR=root
SDKDBPW="4f83b93290c5379ef4910a4faecd1cdb6b7801f1920fe11940a50bf397bcaa64"
SDKDBNM=sdkiz1
SDKINIT=2
SDKACTIVE=10
SDKMAXIDLE=5
SDKMINIDLE=2
SDKBORROW=true
SDKWHILEIDLE=true
#=============SDK CFG================
#SDK=192.168.1.25
SDKPOOLNUM=8
SDKPID=/data/log/sdk.pid
#=============sdk REDIS================
SDKRHOST=10.10.126.132
SDKRPORT=6379
SDKRDB=0
SDKRMIN=1
SDKRMAX=100
SDKRMAXT=200
SDKRMAXW=2000
SDKRT=true
#=============PLAT CFG===============
PLATHOST=passport_i.25pp.com
PLATPORT=8080
TUNCMD=2852126756
PLATPATH=index
#=============MID CFG================
#MID=10.6.12.51
#MIDLGPORT=8880
#MIDLGNUM=4
#MIDCRPORT=8881
#MIDCRNUM=4
#MIDPID=/data/log/middleware.pid
#============PVP CFG================
PVPPID=/data/log/match.pid
PVPTHNUM=100
