#!/bin/sh

JVM_HOME=/usr/lib/jvm/java-8-oracle
JVM_HOSTNAME=$(hostname)
APP_DIR=`dirname $0`

case "$1" in
  start)
    cat >$APP_DIR/jstatd.all.policy <<EOL
grant codebase "file:${JVM_HOME}/lib/tools.jar" {
   permission java.security.AllPermission;
};
EOL

    $JVM_HOME/bin/jstatd -J-Djava.security.policy=$APP_DIR/jstatd.all.policy -J-Djava.rmi.server.hostname=$JVM_HOSTNAME &

    echo "PID: "$!
     ;;
  stop)
    killall jstatd
    ;;
  *)
    echo "Usage $0 start|stop"
    exit 0
    ;;
esac
