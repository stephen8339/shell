#!/bin/bash
LOGICHOST=(logic1)
SDKHOST=(sdk1)
CROSSHOST=(cross1) 
PVPHOST=(pvp)
HOST=( pvp cross1 logic1 )  
SVRHOST=( pvp cross1 logic1 )
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
LOGICDBPW="t63Mo8HvpjZhBvbd"
#=============logic1 CFG================
logic1DEV=false
logic1GM=false
logic1ID=1
logic1=172.31.17.67
logic1NAME=イズモ
logic1CLPORT=8888
logic1MPORT=8887
logic1SKEEPTIME=60
logic1STHREADNUMC=1000
logic1STHREADNUMM=2000
logic1HTHREADNUMC=100
logic1HTHREADNUMM=500
logic1IDLE=150
logic1PID=/data/log/logic.pid
logic1DB=logicdb.czozwo9daiag.ap-northeast-1.rds.amazonaws.com
logic1DBPORT=3306
logic1DBNAME=logic1
logic1INIT=100
logic1ACTIVE=2000
logic1MAXW=30000
logic1MAXA=1000
logic1MINI=100
logic1MAXI=100
logic1REMAT=180
logic1RMILLIS=10000
logic1NUMRUN=10
logic1TMILLIS=1800000
logic1QUERY=1000
logic1KEY=obsidian
logic1LIMIT=4000
#============logic1 REDIS================
logic1RHOST=logicredis.c7sptd.0001.apne1.cache.amazonaws.com
logic1RPORT=6379
logic1RDB=1
logic1RMIN=100
logic1RMAX=100
logic1RMAXT=1000
logic1RMAXW=2000
logic1RT=true
logic1RSHOST=logicredis.c7sptd.0001.apne1.cache.amazonaws.com
logic1RSPORT=6379
logic1RSDB=2
logic1RSMIN=1
logic1RSMAX=20
logic1RSMAXT=50
logic1RSMAXW=2000
logic1RST=true
#============logic2 CFG================
logic2DEV=false
logic2GM=false
logic2ID=2
logic2=172.31.17.66
logic2NAME=イセ
logic2CLPORT=8888
logic2MPORT=8887
logic2SKEEPTIME=60
logic2STHREADNUMC=1000
logic2STHREADNUMM=2000
logic2HTHREADNUMC=100
logic2HTHREADNUMM=500
logic2IDLE=150
logic2PID=/data/log/logic.pid
logic2DB=logicdb.czozwo9daiag.ap-northeast-1.rds.amazonaws.com
logic2DBPORT=3306
logic2DBNAME=logic2
logic2INIT=100
logic2ACTIVE=2000
logic2MAXW=30000
logic2MAXA=1000
logic2MINI=10
logic2MAXI=100
logic2REMAT=180
logic2RMILLIS=10000
logic2NUMRUN=10
logic2TMILLIS=1800000
logic2QUERY=1000
logic2KEY=obsidian
logic2LIMIT=3000
#============logic2 REDIS================
logic2RHOST=logicredis.c7sptd.0001.apne1.cache.amazonaws.com
logic2RPORT=6379
logic2RDB=3
logic2RMIN=100
logic2RMAX=100
logic2RMAXT=1000
logic2RMAXW=2000
logic2RT=true
logic2RSHOST=logicredis.c7sptd.0001.apne1.cache.amazonaws.com
logic2RSPORT=6379
logic2RSDB=2
logic2RSMIN=1
logic2RSMAX=20
logic2RSMAXT=50
logic2RSMAXW=2000
logic2RST=true
#============logic3 CFG================
logic3DEV=false
logic3GM=false
logic3ID=3
logic3=10.10.102.155
logic3NAME=BT3服
logic3CLPORT=6666
logic3MPORT=6665
logic3SKEEPTIME=60
logic3STHREADNUMC=1000
logic3STHREADNUMM=2000
logic3HTHREADNUMC=100
logic3HTHREADNUMM=500
logic3IDLE=150
logic3PID=/data/log/logic.pid
logic3DB=10.10.96.198
logic3DBPORT=3306
logic3DBNAME=logic3
logic3INIT=100
logic3ACTIVE=2000
logic3MAXW=30000
logic3MAXA=1000
logic3MINI=100
logic3MAXI=100
logic3REMAT=180
logic3RMILLIS=10000
logic3NUMRUN=10
logic3TMILLIS=1800000
logic3QUERY=1000
logic3KEY=obsidian
logic3LIMIT=3000
#===========logic3 REDIS================
logic3RHOST=10.10.105.125
logic3RPORT=6379
logic3RDB=4
logic3RMIN=100
logic3RMAX=100
logic3RMAXT=1000
logic3RMAXW=2000
logic3RT=true
logic3RSHOST=10.10.105.125
logic3RSPORT=6379
logic3RSDB=2
logic3RSMIN=1
logic3RSMAX=20
logic3RSMAXT=50
logic3RSMAXW=2000
logic3RST=true
#============logic4 CFG================
logic4DEV=false
logic4GM=false
logic4ID=4
logic4=10.10.112.236
logic4NAME=BT4服
logic4CLPORT=8888
logic4MPORT=8887
logic4SKEEPTIME=60
logic4STHREADNUMC=1000
logic4STHREADNUMM=2000
logic4HTHREADNUMC=100
logic4HTHREADNUMM=500
logic4IDLE=150
logic4PID=/data/log/logic.pid
logic4DB=10.10.96.198
logic4DBPORT=3306
logic4DBNAME=logic4
logic4INIT=100
logic4ACTIVE=2000
logic4MAXW=30000
logic4MAXA=1000
logic4MINI=100
logic4MAXI=100
logic4REMAT=180
logic4RMILLIS=10000
logic4NUMRUN=10
logic4TMILLIS=1800000
logic4QUERY=1000
logic4KEY=obsidian
logic4LIMIT=3000
#===========logic4 REDIS================
logic4RHOST=10.10.105.125
logic4RPORT=6379
logic4RDB=5
logic4RMIN=100
logic4RMAX=100
logic4RMAXT=1000
logic4RMAXW=2000
logic4RT=true
logic4RSHOST=10.10.105.125
logic4RSPORT=6379
logic4RSDB=2
logic4RSMIN=1
logic4RSMAX=20
logic4RSMAXT=50
logic4RSMAXW=2000
logic4RST=true
#============logic5 CFG================
logic5DEV=false
logic5GM=false
logic5ID=5
logic5=10.10.112.236
logic5NAME=BT5服
logic5CLPORT=7777
logic5MPORT=7776
logic5SKEEPTIME=60
logic5STHREADNUMC=1000
logic5STHREADNUMM=2000
logic5HTHREADNUMC=100
logic5HTHREADNUMM=500
logic5IDLE=150
logic5PID=/data/log/logic.pid
logic5DB=10.10.96.198
logic5DBPORT=3306
logic5DBNAME=logic5
logic5INIT=100
logic5ACTIVE=2000
logic5MAXW=30000
logic5MAXA=1000
logic5MINI=100
logic5MAXI=100
logic5REMAT=180
logic5RMILLIS=10000
logic5NUMRUN=10
logic5TMILLIS=1800000
logic5QUERY=1000
logic5KEY=obsidian
logic5LIMIT=3000
#===========logic5 REDIS================
logic5RHOST=10.10.105.125
logic5RPORT=6379
logic5RDB=6
logic5RMIN=100
logic5RMAX=100
logic5RMAXT=1000
logic5RMAXW=2000
logic5RT=true
logic5RSHOST=10.10.105.125
logic5RSPORT=6379
logic5RSDB=2
logic5RSMIN=1
logic5RSMAX=20
logic5RSMAXT=50
logic5RSMAXW=2000
logic5RST=true
#============logic6 CFG================
logic6DEV=false
logic6GM=false
logic6ID=6
logic6=10.10.69.182
logic6NAME=内测六服
logic6CLPORT=8888
logic6MPORT=8887
logic6SKEEPTIME=60
logic6STHREADNUMC=1000
logic6STHREADNUMM=2000
logic6HTHREADNUMC=100
logic6HTHREADNUMM=500
logic6IDLE=150
logic6PID=/data/log/logic.pid
logic6DB=10.10.80.234
logic6DBPORT=3306
logic6DBNAME=obsidian-s6
logic6INIT=100
logic6ACTIVE=2000
logic6MAXW=30000
logic6MAXA=1000
logic6MINI=10
logic6MAXI=100
logic6REMAT=180
logic6RMILLIS=10000
logic6NUMRUN=10
logic6TMILLIS=1800000
logic6QUERY=1000
logic6KEY=obsidian
logic6LIMIT=3000
#===========logic6 REDIS================
logic6RHOST=10.10.67.167
logic6RPORT=6379
logic6RMIN=100
logic6RMAX=100
logic6RMAXT=1000
logic6RMAXW=2000
logic6RT=true
logic6RSHOST=10.10.71.104
logic6RSPORT=6379
logic6RSMIN=1
logic6RSMAX=20
logic6RSMAXT=50
logic6RSMAXW=2000
logic6RST=true
#============logic7 CFG================
logic7DEV=false
logic7GM=false
logic7ID=7
logic7=10.10.69.182
logic7NAME=内测七服
logic7CLPORT=8888
logic7MPORT=8887
logic7SKEEPTIME=60
logic7STHREADNUMC=1000
logic7STHREADNUMM=2000
logic7HTHREADNUMC=100
logic7HTHREADNUMM=500
logic7IDLE=150
logic7PID=/data/log/logic.pid
logic7DB=10.10.80.234
logic7DBPORT=3306
logic7DBNAME=obsidian-s7
logic7INIT=100
logic7ACTIVE=2000
logic7MAXW=30000
logic7MAXA=1000
logic7MINI=10
logic7MAXI=100
logic7REMAT=180
logic7RMILLIS=10000
logic7NUMRUN=10
logic7TMILLIS=1800000
logic7QUERY=1000
logic7KEY=obsidian
logic7LIMIT=3000
#===========logic7 REDIS================
logic7RHOST=10.10.89.247
logic7RPORT=6379
logic7RMIN=100
logic7RMAX=100
logic7RMAXT=1000
logic7RMAXW=2000
logic7RT=true
logic7RSHOST=10.10.71.104
logic7RSPORT=6379
logic7RSMIN=1
logic7RSMAX=20
logic7RSMAXT=50
logic7RSMAXW=2000
logic7RST=true
#============cross1 CFG================
cross1GM=false
cross1IP=172.31.21.244
cross1ID=1
cross1PORT=8881
cross1PT=8880
cross1PID=/data/log/crossrealm.pid
cross1STNC=10
cross1STNM=100
cross1SKAT=60
#============cross2 CFG================
cross2GM=false
cross2IP=172.31.21.243
cross2ID=2      
cross2PORT=8881
cross2PT=8880
cross2PID=/data/log/crossrealm.pid
cross2STNC=10
cross2STNM=100
cross2SKAT=60
#=============LB CFG===============
LB=internal-SDK-LB-789520548.ap-northeast-1.elb.amazonaws.com
LBPORT=80
#=============SDK DB================
SDKDB=sdkdb.czozwo9daiag.ap-northeast-1.rds.amazonaws.com
SDKPORT=3306
SDKDBUSR=root
SDKDBPW="t63Mo8HvpjZhBvbd"
SDKDBNM=sdk1
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
SDKRHOST=sdkredis.c7sptd.0001.apne1.cache.amazonaws.com
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
