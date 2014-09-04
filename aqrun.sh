#!/bin/bash

### BEGIN INIT INFO
# Provides:          aqrunner
# Required-Start: 
# Required-Stop: 
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: AdvancedQueue Runner
# Description: This service manages the drush aq queuerunner used by the 
#              demo running on this appliance
### END INIT INFO

DAEMON_PATH="/usr/local/bin"
DAEMON=aqrun
#DAEMONOPTS="-f /path/to/config.yaml"
DAEMONOPTS=""

NAME=aqrun
DESC="AdvancedQueue Runner"
PIDFILE=/var/run/$NAME.pid
SCRIPTNAME=/etc/init.d/$NAME.sh

case "$1" in
start)
	$DAEMON_PATH/$DAEMON start
;;
status)
                echo "Running"
;;
stop)
	$DAEMON_PATH/$DAEMON stop
;;

restart)
  	$0 stop
  	$0 start
;;

*)
        echo "Usage: $0 {status|start|stop|restart}"
        exit 1
esac
