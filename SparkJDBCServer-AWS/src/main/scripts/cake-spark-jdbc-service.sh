#!/bin/bash
#
#       /etc/rc.d/init.d/<servicename>
#
#       <description of the *service*>
#       <any general comments about this init script>
#
# <tags -- see below for tag definitions.  *Every line* from the top
#  of the file to the end of the tags section must begin with a #
#  character.  After the tags section, there should be a blank line.
#  This keeps normal comments in the rest of the file from being
#  mistaken for tags, should they happen to fit the pattern.>

# Source function library.
. /etc/init.d/functions

<define any local shell functions used by the code that follows>

start() {
        echo -n "Starting <servicename>: "
        <start daemons, perhaps with the daemon function>
        touch /var/lock/subsys/<servicename>
        return <return code of starting daemon>
}

stop() {
        echo -n "Shutting down <servicename>: "
        <stop daemons, perhaps with the killproc function>
        rm -f /var/lock/subsys/<servicename>
        return <return code of stopping daemon>
}

case "$1" in
    start)
        start
        ;;
    stop)
        stop
        ;;
    status)
        <report the status of the daemons in free-form format,
        perhaps with the status function>
        ;;
    restart)
        stop
        start
        ;;
    reload)
        <cause the service configuration to be reread, either with
        kill -HUP or by restarting the daemons, in a manner similar
        to restart above>
        ;;
    condrestart)
        <Restarts the servce if it is already running. For example:>
        [ -f /var/lock/subsys/<service> ] && restart || :
    probe)
        <optional.  If it exists, then it should determine whether
        or not the service needs to be restarted or reloaded (or
        whatever) in order to activate any changes in the configuration
        scripts.  It should print out a list of commands to give to
        $0; see the description under the probe tag below.>
        ;;
    *)
        echo "Usage: <servicename> {start|stop|status|reload|restart[|probe]"
        exit 1
        ;;
esac
exit $?