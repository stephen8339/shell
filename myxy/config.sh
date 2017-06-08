#!/bin/bash
LOGICHOST=(logicim1 logicim2)
SDKHOST=(sdkim1)
CROSSHOST=(crossim1) 
PVPHOST=(pvpim)
HOST=(sdkim1 pvpim crossim1 logicim1 logicim2)
SVRHOST=( pvpim crossim1 logicim1 logicim2)
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
logicim1DEV=false
logicim1GM=false
logicim1ID=1
logicim1=10.10.22.91
logicim1NAME=开天辟地
logicim1CLPORT=8888
logicim1MPORT=8887
logicim1SKEEPTIME=60
logicim1STHREADNUMC=1000
logicim1STHREADNUMM=2000
logicim1HTHREADNUMC=100
logicim1HTHREADNUMM=500
logicim1IDLE=150
logicim1PID=/data/log/logic.pid
logicim1DB=10.10.78.129
logicim1DBPORT=3306
logicim1DBNAME=obsidian_s1
logicim1INIT=100
logicim1ACTIVE=2000
logicim1MAXW=30000
logicim1MAXA=1000
logicim1MINI=100
logicim1MAXI=100
logicim1REMAT=180
logicim1RMILLIS=10000
logicim1NUMRUN=10
logicim1TMILLIS=1800000
#logicmMID="#10.6.12.51:8880#" #middleware服务器列表以逗号分割
logicim1QUERY=1000
logicim1KEY=obsidian
logicim1LIMIT=3000
#=============logic1 REDIS================
logicim1RHOST=10.10.22.91
logicim1RPORT=6379	
logicim1RDB=0
logicim1RMIN=100	
logicim1RMAX=100
logicim1RMAXT=1000	
logicim1RMAXW=2000	
logicim1RT=true
logicim1RSHOST=10.10.52.64
logicim1RSPORT=6379
logicim1RSMIN=1
logicim1RSMAX=20
logicim1RSMAXT=50
logicim1RSMAXW=2000
logicim1RST=true
#=====m=======logic2 CFG================
logicim2DEV=false
logicim2GM=false
logicim2ID=2
logicim2=10.10.37.250
logicim2NAME=灵猴降临
logicim2CLPORT=8888
logicim2MPORT=8887
logicim2SKEEPTIME=60
logicim2STHREADNUMC=1000
logicim2STHREADNUMM=2000
logicim2HTHREADNUMC=100
logicim2HTHREADNUMM=500
logicim2IDLE=150
logicim2PID=/data/log/logic.pid
logicim2DB=10.10.78.129
logicim2DBPORT=3306
logicim2DBNAME=obsidian_s2
logicim2INIT=100
logicim2ACTIVE=2000
logicim2MAXW=30000
logicim2MAXA=1000
logicim2MINI=10
logicim2MAXI=100
logicim2REMAT=180
logicim2RMILLIS=10000
logicim2NUMRUN=10
logicim2TMILLIS=1800000
#logiimc1MID="#10.6.12.51:8880#" #middleware服务器列表以逗号分割
logicim2QUERY=1000
logicim2KEY=obsidian
logicim2LIMIT=3000
#=====m=======logic2 REDIS================
logicim2RHOST=10.10.37.250
logicim2RPORT=6379
logicim2RMIN=100
logicim2RMAX=100
logicim2RMAXT=1000
logicim2RMAXW=2000
logicim2RT=true
logicim2RSHOST=10.10.52.64
logicim2RSPORT=6379
logicim2RSMIN=1
logicim2RSMAX=20
logicim2RSMAXT=50
logicim2RSMAXW=2000
logicim2RST=true
#=====m=======logic3 CFG================
logicim3DEV=false
logicim3GM=false
logicim3ID=3
logicim3=10.10.77.226
logicim3NAME=越狱3服
logicim3CLPORT=8888
logicim3MPORT=8887
logicim3SKEEPTIME=60
logicim3STHREADNUMC=1000
logicim3STHREADNUMM=2000
logicim3HTHREADNUMC=100
logicim3HTHREADNUMM=500
logicim3IDLE=150
logicim3PID=/data/log/logic.pid
logicim3DB=10.10.35.49
logicim3DBPORT=3306
logicim3DBNAME=obsidian-s3
logicim3INIT=100
logicim3ACTIVE=2000
logicim3MAXW=30000
logicim3MAXA=1000
logicim3MINI=10
logicim3MAXI=100
logicim3REMAT=180
logicim3RMILLIS=10000
logicim3NUMRUN=10
logicim3TMILLIS=1800000
#logiim31MID="#10.6.12.51:8880#" #middleware服务器列表以逗号分割
logicim3QUERY=1000
logicim3KEY=obsidian
logicim3LIMIT=3000
#=====m=======logic3 REDIS================
logicim3RHOST=10.10.90.179
logicim3RPORT=6379
logicim3RMIN=100
logicim3RMAX=100
logicim3RMAXT=1000
logicim3RMAXW=2000
logicim3RT=true
logicim3RSHOST=10.10.55.201
logicim3RSPORT=6379
logicim3RSMIN=1
logicim3RSMAX=20
logicim3RSMAXT=50
logicim3RSMAXW=2000
logicim3RST=true
#=====m=======logic4 CFG================
logicim4DEV=false
logicim4GM=false
logicim4ID=4
logicim4=10.10.77.226
logicim4NAME=越狱4服
logicim4CLPORT=8888
logicim4MPORT=8887
logicim4SKEEPTIME=60
logicim4STHREADNUMC=1000
logicim4STHREADNUMM=2000
logicim4HTHREADNUMC=100
logicim4HTHREADNUMM=500
logicim4IDLE=150
logicim4PID=/data/log/logic.pid
logicim4DB=10.10.35.49
logicim4DBPORT=3306
logicim4DBNAME=obsidian-s4
logicim4INIT=100
logicim4ACTIVE=2000
logicim4MAXW=30000
logicim4MAXA=1000
logicim4MINI=10
logicim4MAXI=100
logicim4REMAT=180
logicim4RMILLIS=10000
logicim4NUMRUN=10
logicim4TMILLIS=1800000
#logiim41MID="#10.6.12.51:8880#" #middleware服务器列表以逗号分割
logicim4QUERY=1000
logicim4KEY=obsidian
logicim4LIMIT=3000
#=====m======logic4 REDIS================
logicim4RHOST=10.10.90.148
logicim4RPORT=6379
logicim4RMIN=100
logicim4RMAX=100
logicim4RMAXT=1000
logicim4RMAXW=2000
logicim4RT=true
logicim4RSHOST=10.10.55.201
logicim4RSPORT=6379
logicim4RSMIN=1
logicim4RSMAX=20
logicim4RSMAXT=50
logicim4RSMAXW=2000
logicim4RST=true
#=====m=======logic5 CFG================
logicim5DEV=false
logicim5GM=false
logicim5ID=5
logicim5=10.10.77.226
logicim5NAME=越狱5服
logicim5CLPORT=8888
logicim5MPORT=8887
logicim5SKEEPTIME=60
logicim5STHREADNUMC=1000
logicim5STHREADNUMM=2000
logicim5HTHREADNUMC=100
logicim5HTHREADNUMM=500
logicim5IDLE=150
logicim5PID=/data/log/logic.pid
logicim5DB=10.10.35.49
logicim5DBPORT=3306
logicim5DBNAME=obsidian-s5
logicim5INIT=100
logicim5ACTIVE=2000
logicim5MAXW=30000
logicim5MAXA=1000
logicim5MINI=10
logicim5MAXI=100
logicim5REMAT=180
logicim5RMILLIS=10000
logicim5NUMRUN=10
logicim5TMILLIS=1800000
#logiim51MID="#10.6.12.51:8880#" #middleware服务器列表以逗号分割
logicim5QUERY=1000
logicim5KEY=obsidian
logicim5LIMIT=3000
#=====m=====logic5 REDIS================
logicim5RHOST=10.10.85.204
logicim5RPORT=6379
logicim5RMIN=100
logicim5RMAX=100
logicim5RMAXT=1000
logicim5RMAXW=2000
logicim5RT=true
logicim5RSHOST=10.10.55.201
logicim5RSPORT=6379
logicim5RSMIN=1
logicim5RSMAX=20
logicim5RSMAXT=50
logicim5RSMAXW=2000
logicim5RST=true
#=====m=======logic6 CFG================
logicim6DEV=false
logicim6GM=false
logicim6ID=6
logicim6=10.10.77.226
logicim6NAME=越狱6服
logicim6CLPORT=8888
logicim6MPORT=8887
logicim6SKEEPTIME=60
logicim6STHREADNUMC=1000
logicim6STHREADNUMM=2000
logicim6HTHREADNUMC=100
logicim6HTHREADNUMM=500
logicim6IDLE=150
logicim6PID=/data/log/logic.pid
logicim6DB=10.10.35.49
logicim6DBPORT=3306
logicim6DBNAME=obsidian-s6
logicim6INIT=100
logicim6ACTIVE=2000
logicim6MAXW=30000
logicim6MAXA=1000
logicim6MINI=10
logicim6MAXI=100
logicim6REMAT=180
logicim6RMILLIS=10000
logicim6NUMRUN=10
logicim6TMILLIS=1800000
#logiim61MID="#10.6.12.51:8880#" #middleware服务器列表以逗号分割
logicim6QUERY=1000
logicim6KEY=obsidian
logicim6LIMIT=3000
#=====m=====logic6 REDIS================
logicim6RHOST=10.10.83.63
logicim6RPORT=6379
logicim6RMIN=100
logicim6RMAX=100
logicim6RMAXT=1000
logicim6RMAXW=2000
logicim6RT=true
logicim6RSHOST=10.10.55.201
logicim6RSPORT=6379
logicim6RSMIN=1
logicim6RSMAX=20
logicim6RSMAXT=50
logicim6RSMAXW=2000
logicim6RST=true
#=====m=======logic7 CFG================
logicim7DEV=false
logicim7GM=false
logicim7ID=7
logicim7=10.10.77.226
logicim7NAME=越狱7服
logicim7CLPORT=8888
logicim7MPORT=8887
logicim7SKEEPTIME=60
logicim7STHREADNUMC=1000
logicim7STHREADNUMM=2000
logicim7HTHREADNUMC=100
logicim7HTHREADNUMM=500
logicim7IDLE=150
logicim7PID=/data/log/logic.pid
logicim7DB=10.10.35.49
logicim7DBPORT=3306
logicim7DBNAME=obsidian-s7
logicim7INIT=100
logicim7ACTIVE=2000
logicim7MAXW=30000
logicim7MAXA=1000
logicim7MINI=10
logicim7MAXI=100
logicim7REMAT=180
logicim7RMILLIS=10000
logicim7NUMRUN=10
logicim7TMILLIS=1800000
#logiim71MID="#10.6.12.51:8880#" #middleware服务器列表以逗号分割
logicim7QUERY=1000
logicim7KEY=obsidian
logicim7LIMIT=3000
#=====m====logic7 REDIS================
logicim7RHOST=10.10.35.172
logicim7RPORT=6379
logicim7RMIN=100
logicim7RMAX=100
logicim7RMAXT=1000
logicim7RMAXW=2000
logicim7RT=true
logicim7RSHOST=10.10.55.201
logicim7RSPORT=6379
logicim7RSMIN=1
logicim7RSMAX=20
logicim7RSMAXT=50
logicim7RSMAXW=2000
logicim7RST=true
#=====m=======logic8 CFG================
logicim8DEV=false
logicim8GM=false
logicim8ID=8
logicim8=10.10.77.226
logicim8NAME=越狱8服
logicim8CLPORT=8888
logicim8MPORT=8887
logicim8SKEEPTIME=60
logicim8STHREADNUMC=1000
logicim8STHREADNUMM=2000
logicim8HTHREADNUMC=100
logicim8HTHREADNUMM=500
logicim8IDLE=150
logicim8PID=/data/log/logic.pid
logicim8DB=10.10.35.49
logicim8DBPORT=3306
logicim8DBNAME=obsidian-s8
logicim8INIT=100
logicim8ACTIVE=2000
logicim8MAXW=30000
logicim8MAXA=1000
logicim8MINI=10
logicim8MAXI=100
logicim8REMAT=180
logicim8RMILLIS=10000
logicim8NUMRUN=10
logicim8TMILLIS=1800000
#logiim81MID="#10.6.12.51:8880#" #middleware服务器列表以逗号分割
logicim8QUERY=1000
logicim8KEY=obsidian
logicim8LIMIT=3000
#=====m=====logic8 REDIS================
logicim8RHOST=10.10.87.62
logicim8RPORT=6379
logicim8RMIN=100
logicim8RMAX=100
logicim8RMAXT=1000
logicim8RMAXW=2000
logicim8RT=true
logicim8RSHOST=10.10.55.201
logicim8RSPORT=6379
logicim8RSMIN=1
logicim8RSMAX=20
logicim8RSMAXT=50
logicim8RSMAXW=2000
logicim8RST=true
#=====m=======logic9 CFG================
logicim9DEV=false
logicim9GM=false
logicim9ID=9
logicim9=10.10.77.226
logicim9NAME=越狱9服
logicim9CLPORT=8888
logicim9MPORT=8887
logicim9SKEEPTIME=60
logicim9STHREADNUMC=1000
logicim9STHREADNUMM=2000
logicim9HTHREADNUMC=100
logicim9HTHREADNUMM=500
logicim9IDLE=150
logicim9PID=/data/log/logic.pid
logicim9DB=10.10.35.49
logicim9DBPORT=3306
logicim9DBNAME=obsidian-s9
logicim9INIT=100
logicim9ACTIVE=2000
logicim9MAXW=30000
logicim9MAXA=1000
logicim9MINI=10
logicim9MAXI=100
logicim9REMAT=180
logicim9RMILLIS=10000
logicim9NUMRUN=10
logicim9TMILLIS=1800000
#logiim91MID="#10.6.12.51:8880#" #middleware服务器列表以逗号分割
logicim9QUERY=1000
logicim9KEY=obsidian
logicim9LIMIT=3000
#=====m=========logic9 REDIS================
logicim9RHOST=10.10.66.204
logicim9RPORT=6379
logicim9RMIN=100
logicim9RMAX=100
logicim9RMAXT=1000
logicim9RMAXW=2000
logicim9RT=true
logicim9RSHOST=10.10.55.201
logicim9RSPORT=6379
logicim9RSMIN=1
logicim9RSMAX=20
logicim9RSMAXT=50
logicim9RSMAXW=2000
logicim9RST=true
#=====m=======logic10 CFG================
logicim10DEV=false
logicim10GM=false
logicim10ID=10
logicim10=10.10.81.231
logicim10NAME=越狱合服10-11服
logicim10CLPORT=8888
logicim10MPORT=8887
logicim10SKEEPTIME=60
logicim10STHREADNUMC=1000
logicim10STHREADNUMM=2000
logicim10HTHREADNUMC=100
logicim10HTHREADNUMM=500
logicim10IDLE=150
logicim10PID=/data/log/logic.pid
logicim10DB=10.10.35.49
logicim10DBPORT=3306
logicim10DBNAME=obsidian-s10
logicim10INIT=100
logicim10ACTIVE=2000
logicim10MAXW=30000
logicim10MAXA=1000
logicim10MINI=10
logicim10MAXI=100
logicim10REMAT=180
logicim10RMILLIS=10000
logicim10NUMRUN=10
logicim10TMILLIS=1800000
#logiim101MID="#10.6.12.51:8880#" #middleware服务器列表以逗号分割
logicim10QUERY=1000
logicim10KEY=obsidian
logicim10LIMIT=3000
#=====m=========logic10 REDIS================
logicim10RHOST=10.10.81.27
logicim10RPORT=6379
logicim10RMIN=100
logicim10RMAX=100
logicim10RMAXT=1000
logicim10RMAXW=2000
logicim10RT=true
logicim10RSHOST=10.10.55.201
logicim10RSPORT=6379
logicim10RSMIN=1
logicim10RSMAX=20
logicim10RSMAXT=50
logicim10RSMAXW=2000
logicim10RST=true
#=====m=======logic11 CFG================
logicim11DEV=false
logicim11GM=false
logicim11ID=11
logicim11=10.10.81.231
logicim11NAME=越狱11服
logicim11CLPORT=8888
logicim11MPORT=8887
logicim11SKEEPTIME=60
logicim11STHREADNUMC=1000
logicim11STHREADNUMM=2000
logicim11HTHREADNUMC=100
logicim11HTHREADNUMM=500
logicim11IDLE=150
logicim11PID=/data/log/logic.pid
logicim11DB=10.10.35.49
logicim11DBPORT=3306
logicim11DBNAME=obsidian-s11
logicim11INIT=100
logicim11ACTIVE=2000
logicim11MAXW=30000
logicim11MAXA=1000
logicim11MINI=100
logicim11MAXI=100
logicim11REMAT=180
logicim11RMILLIS=10000
logicim11NUMRUN=10
logicim11TMILLIS=1800000
ogicim11QUERY=1000
logicim11KEY=obsidian
logicim11LIMIT=3000
#=====m=======logic11 REDIS================
logicim11RHOST=10.10.92.42
logicim11RPORT=6379
logicim11RDB=0
logicim11RMIN=100
ogicim11RMAX=100
logicim11RMAXT=1000
logicim11RMAXW=2000
logicim11RT=true
logicim11RSHOST=10.10.55.201
logicim11RSPORT=6379
logicim11RSMIN=1
logicim11RSMAX=20
logicim11RSMAXT=50
logicim11RSMAXW=2000
logicim11RST=true
#=====m=======cross1 CFG================
crossim1GM=false
crossim1IP=10.10.40.152
crossim1ID=1
crossim1PORT=8881
crossim1PT=8880
crossim1PID=/data/log/crossrealm.pid
crossim1NUM=1000
#=====m=======cross2 CFG================
crossim2GM=false
crossim2IP=10.10.21.242
crossim2ID=2      
crossim2PORT=8881
crossim2PT=8880
crossim2PID=/data/log/crossrealm.pid
crossim2NUM=1000
#=============LB CFG===============
LB=10.10.53.57
LBPORT=80
#=============SDK DB================
SDKDB=10.10.90.126
SDKPORT=3306
SDKDBUSR=root
SDKDBPW="4f83b93290c5379ef4910a4faecd1cdb6b7801f1920fe11940a50bf397bcaa64"
SDKDBNM=sdkm
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
SDKRHOST=10.10.53.57
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
