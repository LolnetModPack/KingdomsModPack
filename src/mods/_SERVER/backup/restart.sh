mkdir -p ../ServerLogs/$(basename `pwd`)
mv server.log ../ServerLogs/$(basename `pwd`)/20$(date +"%y%m%d%H%M").log
screen -dmS ADVENTURE java -Xms1g -Xmx4g -XX:PermSize=512m -jar cauldron.jar