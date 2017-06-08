#!/bin/bash
source /data/shell/myxy/config.sh

#=================SDK redis.properties====================
#for a in ${SDKHOST[*]}

#do
eval b=$SDKRHOST
eval c=$SDKRPORT
eval d=$SDKRDB
eval e=$SDKRMIN
eval f=$SDKRMAX
eval g=$SDKRMAXT
eval h=$SDKRMAXW
eval i=$SDKRT
        echo -e "host=$b
port=$c
database=$d
minIdle=$e
maxIdle=$f
maxTotal=$g
maxWaitMillis=$h
testOnBorrow=$i" >/data/tags/ios_myxy_sdk/src/main/webapp/WEB-INF/redis.properties
#done

#=================SDK mybatis-config.xml====================
#for z in ${SDKHOST[*]}

#do
echo -e "<?xml version=\"1.0\" encoding=\"UTF-8\" ?>
<!DOCTYPE configuration
  PUBLIC \"-//mybatis.org//DTD Config 3.0//EN\"
  \"http://mybatis.org/dtd/mybatis-3-config.dtd\">
<configuration>

    <settings>
        <setting name=\"cacheEnabled\" value=\"true\"/>
    </settings>

    <environments default=\"development\">
        <environment id=\"development\">
            <transactionManager type=\"JDBC\"/>
            <dataSource type=\"app.library.DbcpDataSourceFactory\">
                <property name=\"driverClassName\" value=\"com.mysql.jdbc.Driver\"/>
                <property name=\"url\" value=\"jdbc:mysql://$SDKDB:$SDKPORT/$SDKDBNM?useUnicode=true&amp;characterEncoding=UTF-8&amp;autoReconnect=true\"/>
                <property name=\"username\" value=\"$SDKDBUSR\"/>
                <property name=\"password\" value=\"$SDKDBPW\"/>
                <property name=\"initialSize\" value=\"10\"/>
                <property name=\"maxWait\" value=\"30000\"/>
                <property name=\"maxActive\" value=\"200\"/>
                <property name=\"minIdle\" value=\"10\"/>
                <property name=\"maxIdle\" value=\"200\"/>
                <property name=\"removeAbandoned\" value=\"true\"/>
                <property name=\"removeAbandonedTimeout\" value=\"180\"/>
                <property name=\"timeBetweenEvictionRunsMillis\" value=\"10000\"/>
                <property name=\"numTestsPerEvictionRun\" value=\"10\"/>
                <property name=\"minEvictableIdleTimeMillis\" value=\"1800000\"/>
                <property name=\"validationQuery\" value=\"SELECT NOW() FROM DUAL\"/>
            </dataSource>
        </environment>
    </environments>

    <mappers>
        <package name=\"app.mapper\"/>
    </mappers>

</configuration>">/data/tags/ios_myxy_sdk/src/main/resources/mybatis-config.xml
chmod 700 /data/tags/ios_myxy_sdk/src/main/resources/mybatis-config.xml
#done

#=================SDK platform_pp.json====================
#for z in ${SDKHOST[*]}

#do
#cp /data/sdk/src/main/webapp/WEB-INF/platform.json /data/sdk/src/main/webapp/WEB-INF/
#done

#================SDK app_upgrade.json====================
#for z in ${SDKHOST[*]}

#do
#cp /data/sdk/src/main/webapp/WEB-INF/app_upgrade.json /data/config/$z/conf/sdk/
#done
#=================MIDDLE app.json====================
#for x in ${MIDHOST[*]}

#do
#mkdir -p /data/config/$x/conf/middleware
#echo -e "{
#    \"logic_port\": $MIDLGPORT,
#    \"logic_thread_num\": $MIDLGNUM,
#    \"crossrealm_port\": $MIDCRPORT,
#    \"crossrealm_thread_num\": $MIDCRNUM,
#    \"pid_file\": \"$MIDPID\"
#}">/data/config/$x/conf/middleware/app.json
#done

#=================MIDDLE crossrealms.json====================
# echo -e "{" >/data/config/middle/conf/middleware/crossrealms.json

# for a in ${CROSSHOST[*]}
# do
# eval b=\$${a}IP
# eval c=\$${a}ID
#        echo -e "\""$b"\": -$c">>/data/config/middle/conf/middleware/crossrealms.json
# done
# echo -e "}">>/data/config/middle/conf/middleware/crossrealms.json

#=================LOGIC app.json====================
for a in ${LOGICHOST[*]}

do
mkdir -p /data/config/$a/conf/logic
eval b=\$${a}CLPORT
eval c=\$${a}MPORT
eval d=\$${a}SKEEPTIME
eval e=\$${a}IDLE
eval f=\$${a}PID
eval g=\$${a}
eval h=\$${a}NAME
eval i=\$${a}MID
eval j=\$${a}QUERY
eval k=\$${a}KEY
eval l=\$${a}VER
eval m=\$${a}GM
eval n=\$${a}ID
eval o=\$${a}STHREADNUMC
eval p=\$${a}STHREADNUMM
eval q=\$${a}HTHREADNUMC
eval s=\$${a}HTHREADNUMM
eval t=\$${a}DEV
eval u=\$${a}LIMIT
eval v=\$${a}OPEN

echo -e "{
    \"development\": $t,
    \"gm\": $m,
    \"id\": $n,
    \"name\":\"$h\",
    \"ip\":\"$g\",
    \"port\": $b,
    \"manage_http_port\": $c,
    \"socket_thread_num_core\": $o,
    \"socket_thread_num_max\": $p,
    \"socket_keep_alive_time\": $d,
    \"http_thread_num_core\": $q,
    \"http_thread_num_max\": $s,
    \"both_idle\": $e,
    \"pid_file\": \"$f\",
    \"sdk_host\": \"$LB\",
    \"sdk_port\": $LBPORT," >/data/config/$a/conf/logic/app.json
#| sed 's/"id": logic\([0-999]\)/"id": \1/g' 
echo -e "
    \"flow_log\": true,
        \"slow_query_time\": $j,
	\"public_key\": \"$k\",
	\"login_account_limit\": $u
}" | sed 's/#/\"/g' >>/data/config/$a/conf/logic/app.json

done

#=================LOGIC mybatis.properties====================
for a in ${LOGICHOST[*]}

do

eval b=\$${a}DB
eval c=\$${a}DBPORT
eval d=\$${a}DBNAME
eval e=\$${a}INIT
eval f=\$${a}ACTIVE
eval g=\$${a}MAXW
eval h=\$${a}MAXA
eval i=\$${a}MINI
eval j=\$${a}MAXI
eval k=\$${a}REMAT
eval l=\$${a}RMILLIS
eval m=\$${a}NUMRUN
eval n=\$${a}TMILLIS

echo -e "JDBC.driver=com.mysql.jdbc.Driver
JDBC.url=jdbc:mysql://$b:$c/$d?useUnicode=true&characterEncoding=UTF-8&autoReconnect=true
JDBC.username=$LOGICDBUSR
JDBC.password=$LOGICDBPW
DBCP.initialSize=$e
DBCP.maxWait=$g
DBCP.maxActive=$h
DBCP.minIdle=$i
DBCP.maxIdle=$j
DBCP.removeAbandonedTimeout=$k
DBCP.timeBetweenEvictionRunsMillis=$l
DBCP.numTestsPerEvictionRun=$m
DBCP.minEvictableIdleTimeMillis=$n
DBCP.validationQuery=SELECT NOW() FROM DUAL" >/data/config/$a/conf/logic/mybatis.properties

chmod 700 /data/config/$a/conf/logic/mybatis.properties
done

#=================LOGIC version.json====================
for a in ${LOGICHOST[*]}

do

cp /home/tags/ios_myxy_server/conf/logic/version.json /data/config/$a/conf/logic/version.json

done
#=================LOGIC redis.properties====================
for a in ${LOGICHOST[*]}

do
eval b=\$${a}RHOST
eval c=\$${a}RPORT
eval e=\$${a}RMIN
eval f=\$${a}RMAX
eval g=\$${a}RMAXT
eval h=\$${a}RMAXW
eval i=\$${a}RT
        echo -e "host=$b
port=$c
minIdle=$e
maxIdle=$f
maxTotal=$g
maxWaitMillis=$h
testOnBorrow=$i">/data/config/$a/conf/logic/redis.properties
done

#=================LOGIC redis_shared.properties====================
for a in ${LOGICHOST[*]}

do
eval b=\$${a}RSHOST
eval c=\$${a}RSPORT
eval e=\$${a}RSMIN
eval f=\$${a}RSMAX
eval g=\$${a}RSMAXT
eval h=\$${a}RSMAXW
eval i=\$${a}RST
        echo -e "host=$b
port=$c
minIdle=$e
maxIdle=$f
maxTotal=$g
maxWaitMillis=$h
testOnBorrow=$i">/data/config/$a/conf/logic/redis_shared.properties
done

#=================LOGIC crossrealm.json===============
mkdir -p /data/config/tmp

echo -e "{" >/data/config/tmp/crossrealm.json
for a in ${CROSSHOST[*]}
do
eval b=\$${a}IP
eval c=\$${a}ID
eval d=\$${a}PT
       echo -e "\"$c\": \"$b:$d\",\c">>/data/config/tmp/crossrealm.json
done
echo -e ",">>/data/config/tmp/crossrealm.json
cat /data/config/tmp/crossrealm.json | sed 's/,,/\n/g' -i /data/config/tmp/crossrealm.json
echo -e "}">>/data/config/tmp/crossrealm.json

for e in ${LOGICHOST[*]}

do
cp -f /data/config/tmp/crossrealm.json /data/config/$e/conf/logic
done
rm -rf /data/config/tmp

#=================LOGIC log4j.properties=====================
for a in ${LOGICHOST[*]}
do
cp -R /data/tags/ios_myxy_server/conf/logic/log4j.properties /data/config/$a/conf/logic
done

#=================LOGIC quartz.properties=====================
for a in ${LOGICHOST[*]}
do
cp -R /data/tags/ios_myxy_server/conf/logic/quartz.properties /data/config/$a/conf/logic
done

#=================CROSS app.json====================
for a in ${CROSSHOST[*]}

do
mkdir -p /data/config/$a/conf/crossrealm
eval b=\$${a}NUM
eval c=\$${a}PID
eval d=\$${a}PT
eval e=\$${a}GM

echo -e "{
    \"gm\": $e,
    \"id\": $a,
    \"port\": \"$d\",
    \"pid_file\": \"$c\",
    \"net_thread_num\": $b,
    \"sdk_host\": \"$LB\",
    \"sdk_port\": $LBPORT
}" | sed 's/"id": crossim\([0-999]\)/"id": \1/g' >/data/config/$a/conf/crossrealm/app.json

done


#=================CROSS bridge.json====================
#echo -e "\c">/data/CROSS1/bridge.json
mkdir -p /data/tmp
echo -e "{" > /data/tmp/bridge.json
for a in ${LOGICHOST[*]}

do
eval b=\$${a}
eval c=\$${a}MPORT

echo -e "
    \"$a\": {
        \"host\": \"$b\",
        \"port\": $c
    },\c" | sed 's/logicim\([0-999]\)/\1/g' >>/data/tmp/bridge.json

done
echo -e ",">>/data/tmp/bridge.json
cat /data/tmp/bridge.json | sed 's/,,/\n/g' -i /data/tmp/bridge.json
echo "}" >>/data/tmp/bridge.json

for d in ${CROSSHOST[*]}

do
cp -f /data/tmp/bridge.json /data/config/$d/conf/crossrealm
done
rm -rf /data/tmp

#=================CROSS id_dict.json====================
for a in ${CROSSHOST[*]}
do
echo -e "{
}">/data/config/$a/conf/crossrealm/id_dict.json
done

#=================CROSS log4j.properties=====================
for a in ${CROSSHOST[*]}
do
cp -R /data/tags/ios_myxy_server/conf/crossrealm/log4j.properties /data/config/$a/conf/crossrealm
done

#=================CROSS quartz.properties=====================
for a in ${CROSSHOST[*]}
do
cp -R /data/tags/ios_myxy_server/conf/crossrealm/quartz.properties /data/config/$a/conf/crossrealm
done

#=================PVP app.json=====================
for a in ${PVPHOST[*]}

do

mkdir -p /data/config/$a/conf/pvp_match
echo -e "{
    \"pid_file\": \"$PVPPID\",
    \"sdk_host\": \"$LB\",
    \"sdk_port\": $LBPORT,
    \"thread_num\": $PVPTHNUM
}">/data/config/$a/conf/pvp_match/app.json
done

#=================PVP bridge.json=====================
for a in ${PVPHOST[*]}
do
cp -R /data/config/crossim1/conf/crossrealm/bridge.json /data/config/$a/conf/pvp_match
done
#=================PVP id_dict.json=====================
for a in ${PVPHOST[*]}
do
cp -R /data/config/crossim1/conf/crossrealm/id_dict.json /data/config/$a/conf/pvp_match
done
#=================PVP redis_shared.properties=====================
for a in ${PVPHOST[*]}
do
cp -R /data/config/logicim1/conf/logic/redis_shared.properties /data/config/$a/conf/pvp_match
done

#=================PVP log4j.properties=====================
for a in ${PVPHOST[*]}
do
cp -R /data/tags/ios_myxy_server/conf/pvp_match/log4j.properties /data/config/$a/conf/pvp_match
done

#=================PVP quartz.properties=====================
for a in ${PVPHOST[*]}
do
cp -R /data/tags/ios_myxy_server/conf/pvp_match/quartz.properties /data/config/$a/conf/pvp_match
done

#=================octopus.xml=======================
#echo -e "<?xml version=\"1.0\" encoding=\"UTF-8\"?>
#<octopus>
#
#    <default-module>logic</default-module>
#
#    <module name=\"logic\">
#
#        <config name=\"app\">
#            <param name=\"path\">$LOGICAPPPATH</param>
#            <param name=\"fileType\">json</param>
#            <param name=\"loadOnStart\">true</param>
#            <param name=\"hotLoad\">true</param>
#            <param name=\"callback\">servers.logic.gameobject.ConfigurationAppCallback</param>
#        </config>
#        <config>
#            <param name=\"path\">$LOGICMYPATH</param>
#            <param name=\"fileType\">properties</param>
#        </config>
#        <config>
#            <param name=\"path\">$LOGICCRPATH</param>
#            <param name=\"fileType\">json</param>
#            <param name=\"hotLoad\">true</param>
#            <param name=\"loadOnStart\">true</param>
#            <param name=\"callback\">servers.logic.gameobject.ConfigurationCrossrealmCallback</param>
#        </config>
#        <config>
#            <param name=\"path\">$LOGICMEMPATH</param>
#            <param name=\"fileType\">json</param>
#        </config>
#        <config name=\"json/\">
#            <param name=\"path\">$LOGICJSONPATH</param>
#            <param name=\"fileType\">json</param>
#            <param name=\"extensions\">json</param>
#            <param name=\"loadOnStart\">true</param>
#            <param name=\"hotLoad\">true</param>
#        </config>
#
#        <ioc factory=\"guice\" iocClass=\"servers.logic.library.ioc.IocGuiceFilter\" />
#
#        <listener>
#            <listener-class>servers.logic.library.listener.LogicMiscListener</listener-class>
#        </listener>
#        <listener>
#            <listener-class>servers.logic.library.listener.LogicRoleIdMappingListener</listener-class>
#        </listener>
#        <listener>
#            <listener-class>servers.logic.library.listener.MinaSocketListener</listener-class>
#        </listener>
#        <listener>
#            <listener-class>servers.logic.library.listener.MinaHttpListener</listener-class>
#        </listener>
#
#        <filter>
#            <group>socket</group>
#            <filter-class>servers.logic.library.filter.SocketMiscFilter</filter-class>
#        </filter>
#        <filter>
#            <group>socket</group>
#            <filter-class>servers.logic.library.filter.SocketMessageFilter</filter-class>
#        </filter>
#        <filter>
#            <group>http</group>
#            <filter-class>servers.logic.library.filter.HttpMessageFilter</filter-class>
#        </filter>
#
#        <quartz-config>conf/quartz.properties</quartz-config>
#        <quartz-group id=\"group1\">
#            <job id=\"job1\">
#                <job-class>obsidian.application.schedule.ScheduledGameMapRefresh</job-class>
#            </job>
#            <job id=\"job2\">
#                <job-class>obsidian.application.schedule.ScheduledServerStatus</job-class>
#            </job>
#	    <job id=\"job3\">
#                <job-class>obsidian.application.schedule.ScheduledBlackInterface</job-class>
#            </job>
#            <trigger id=\"trigger1\">
#                <trigger-delay>500</trigger-delay>
#                <jobs>job1</jobs>
#            </trigger>
#            <trigger id=\"trigger2\">
#                <trigger-cron>0 0/5 * * * ?</trigger-cron>
#                <jobs>job2</jobs>
#            </trigger>
#	    <trigger id=\"trigger3\">
#                <trigger-cron>0 0/1 * * * ?</trigger-cron>
#                <jobs>job3</jobs>
#            </trigger>
#        </quartz-group>
#
#    </module>
#
#    <module name=\"crossrealm\">
#
#        <config name=\"app\">
#            <param name=\"path\">$CROSSAPPPATH</param>
#            <param name=\"fileType\">json</param>
#        </config>
#        <config>
#            <param name=\"path\">$CROSSBRPATH</param>
#            <param name=\"fileType\">json</param>
#            <param name=\"hotLoad\">true</param>
#        </config>
#        <config>
#            <param name=\"path\">$CROSSIDPATH</param>
#            <param name=\"fileType\">json</param>
#            <param name=\"hotLoad\">true</param>
#        </config>
#        <config name=\"json/\">
#            <param name=\"path\">$CROSSJSONPATH</param>
#            <param name=\"fileType\">json</param>
#            <param name=\"extensions\">json</param>
#            <param name=\"loadOnStart\">true</param>
#            <param name=\"hotLoad\">true</param>
#        </config>
#
#        <ioc factory=\"guice\" iocClass=\"servers.crossrealm.library.ioc.IocGuiceFilter\" />
#
#        <listener>
#            <listener-class>servers.crossrealm.library.listener.CrossrealmMiscListener</listener-class>
#        </listener>
#        <listener>
#            <listener-class>servers.crossrealm.library.listener.CrossrealmSocketListener</listener-class>
#        </listener>
#
#        <filter>
#            <group>socket</group>
#            <filter-class>servers.crossrealm.library.filter.CrossrealmMessageFilter</filter-class>
#        </filter>
#
#        <quartz-config>conf/quartz.properties</quartz-config>
#        <quartz-group id=\"group1\">
#            <job id=\"job1\">
#                <job-class>obsidian.application.schedule.ScheduledGameMapRefresh</job-class>
#            </job>
#            <trigger id=\"trigger1\">
#                <trigger-delay>500</trigger-delay>
#                <jobs>job1</jobs>
#            </trigger>
#        </quartz-group>
#    </module>
#
#    <module name=\"pvp\">
#
#        <config name=\"app\">
#            <param name=\"path\">$PVPAPPPATH</param>
#            <param name=\"fileType\">json</param>
#        </config>
#        <config>
#            <param name=\"path\">$PVPBRPATH</param>
#            <param name=\"fileType\">json</param>
#            <param name=\"hotLoad\">true</param>
#        </config>
#        <config>
#            <param name=\"path\">$PVPIDPATH</param>
#            <param name=\"fileType\">json</param>
#            <param name=\"hotLoad\">true</param>
#        </config>
#
#        <ioc factory=\"guice\" iocClass=\"servers.pvp.library.ioc.IocGuiceFilter\" />
#
#        <listener>
#            <listener-class>servers.pvp.library.listener.PvpMiscListener</listener-class>
#        </listener>
#
#        <quartz-config>$QUARTZPATH</quartz-config>
#        <quartz-group id=\"group1\">
#            <job id=\"muilt\">
#                <job-class>servers.pvp.scheduled.ScheduledMatchMuiltTask</job-class>
#            </job>
#            <job id=\"single\">
#                <job-class>servers.pvp.scheduled.ScheduledMatchSingleTask</job-class>
#            </job>
#            <trigger id=\"trigger1\">
#                <trigger-delay>1000</trigger-delay>
#                <jobs>muilt,single</jobs>
#            </trigger>
#        </quartz-group>
#
#    </module>
#
#</octopus>"> /data/server/src/main/resources/octopus.xml
#=================log4j.properties====================
#echo -e "# Set root logger level to DEBUG and its only appender to A1.
#log4j.rootLogger=WARN, file
#
## A1 is set to be a ConsoleAppender.
#log4j.appender.A1=org.apache.log4j.ConsoleAppender
#
## A1 uses PatternLayout.
#log4j.appender.A1.layout=org.apache.log4j.PatternLayout
#log4j.appender.A1.layout.ConversionPattern=%d{yyyy-MM-dd HH:mm:ss,SSS} [%t] %-5p %c{1} %x - %m%n
#
#log4j.appender.file=org.apache.log4j.DailyRollingFileAppender
#log4j.appender.file.File=$DEBUGLOG
#log4j.appender.file.DatePattern='.'yyyy-MM-dd
#log4j.appender.file.layout=org.apache.log4j.PatternLayout
#log4j.appender.file.layout.ConversionPattern=%d [%t] %-5p %c{1} %x - %m%n
#
#log4j.additivity.accesser=true
#log4j.logger.accesser=INFO, accesser
#log4j.appender.accesser=org.apache.log4j.DailyRollingFileAppender
#log4j.appender.accesser.File=$ACCESSLOG
#log4j.appender.accesser.DatePattern='.'yyyy-MM-dd
#log4j.appender.accesser.layout=org.apache.log4j.PatternLayout
#log4j.appender.accesser.layout.ConversionPattern=%d %m%n
#
#log4j.additivity.recorder=false
#log4j.logger.recorder=INFO, recorder
#log4j.appender.recorder=org.apache.log4j.DailyRollingFileAppender
#log4j.appender.recorder.File=$RECLOG
#log4j.appender.recorder.DatePattern='.'yyyy-MM-dd
#log4j.appender.recorder.layout=org.apache.log4j.PatternLayout
#log4j.appender.recorder.layout.ConversionPattern=%d %m%n
#
#log4j.additivity.flow=false
#log4j.logger.flow=INFO, flow
#log4j.appender.flow=org.apache.log4j.DailyRollingFileAppender
#log4j.appender.flow.File=$FLOWLOG
#log4j.appender.flow.DatePattern='.'yyyy-MM-dd
#log4j.appender.flow.layout=org.apache.log4j.PatternLayout
#log4j.appender.flow.layout.ConversionPattern=%d %m%n
#
#log4j.additivity.feedback=false
#log4j.logger.feedback=INFO, feedback
#log4j.appender.feedback=org.apache.log4j.DailyRollingFileAppender
#log4j.appender.feedback.File=$FBLOG
#log4j.appender.feedback.DatePattern='.'yyyy-MM-dd
#log4j.appender.feedback.layout=org.apache.log4j.PatternLayout
#log4j.appender.feedback.layout.ConversionPattern=%d %m%n
#
#log4j.additivity.slow=false
#log4j.logger.slow=INFO, slow
#log4j.appender.slow=org.apache.log4j.DailyRollingFileAppender
#log4j.appender.slow.File=$SLOWLOG
#log4j.appender.slow.DatePattern='.'yyyy-MM-dd
#log4j.appender.slow.layout=org.apache.log4j.PatternLayout
#log4j.appender.slow.layout.ConversionPattern=%d %m%n
#
#log4j.additivity.payment=false
#log4j.logger.payment=INFO, payment
#log4j.appender.payment=org.apache.log4j.DailyRollingFileAppender
#log4j.appender.payment.File=$PAYLOG
#log4j.appender.payment.DatePattern='.'yyyy-MM-dd
#log4j.appender.payment.layout=org.apache.log4j.PatternLayout
#log4j.appender.payment.layout.ConversionPattern=%d %m%n" > /data/server/src/main/resources/log4j.properties
##===============================SDK log4j.properties==================
#echo -e "# Set root logger level to DEBUG and its only appender to A1.
#log4j.rootLogger=WARN, file
#
## A1 is set to be a ConsoleAppender.
#log4j.appender.A1=org.apache.log4j.ConsoleAppender
#
## A1 uses PatternLayout.
#log4j.appender.A1.layout=org.apache.log4j.PatternLayout
#log4j.appender.A1.layout.ConversionPattern=%d{yyyy-MM-dd HH:mm:ss,SSS} [%t] %-5p %c{1} %x - %m%n
#
#log4j.appender.file=org.apache.log4j.DailyRollingFileAppender
#log4j.appender.file.File=$SDKDEBUGLOG
#log4j.appender.file.DatePattern='.'yyyy-MM-dd
#log4j.appender.file.layout=org.apache.log4j.PatternLayout
#log4j.appender.file.layout.ConversionPattern=%d [%t] %-5p %c{1} %x - %m%n
#
#log4j.additivity.recorder=false
#log4j.logger.recorder=INFO, recorder
#log4j.appender.recorder=org.apache.log4j.DailyRollingFileAppender
#log4j.appender.recorder.File=$SDKRECLOG
#log4j.appender.file.DatePattern='.'yyyy-MM-dd
#log4j.appender.recorder.layout=org.apache.log4j.PatternLayout
#log4j.appender.recorder.layout.ConversionPattern=%d %m%n
#
#log4j.additivity.accesser=false
#log4j.logger.accesser=INFO, accesser
#log4j.appender.accesser=org.apache.log4j.DailyRollingFileAppender
#log4j.appender.accesser.File=$SDKACCLOG
#log4j.appender.accesser.DatePattern='.'yyyy-MM-dd
#log4j.appender.accesser.layout=org.apache.log4j.PatternLayout
#log4j.appender.accesser.layout.ConversionPattern=%d %m%n" > /data/sdk/src/main/resources/log4j.properties
#=======================================END===============================================
if [ $? -eq 0 ];
                then
                        echo -e "\n== CreateConfig is complete ==";
                else
                        echo -e "\n== CreateConfig error ==";
fi
