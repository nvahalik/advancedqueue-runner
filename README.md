AdvancedQueue Runner

What is this?
-------------
Needed a way to run advancedqueue runners that will run continuosly. Cron just won't cut it. So this script takes one or more long-running scripts and makes sure they continue running.

Installation
------------
Put aqrun in `/usr/local/bin`, make sure it is executable, and stick the config in /etc/.

    mv aqrun /usr/local/bin/
    chmod +x /usr/local/bin/aqrun
    mv aqrun.yaml /etc/

Optionally, you can put aqrun.sh in `/etc/init.d/` and then update your rc scripts so that it starts automatically.

    mv aqrun.sh /etc/init.d/
    update-rc.d aqrun.sh defaults

Usage
-----
If you just want to run it from the CLI, you can use it like a standard daemon. To start it:

    aqrun start

To stop it:

    aqrun stop

No frills, no fuss. If you don't use /etc/aqrun.yaml, you'll need to change your /etc/init.d/aqrun.sh to point to it.

Todo
----
1. Better config file?
2. Better logging.
3. ?

Credits
-------
Uses Sander Marechal's [Daemon class](http://www.jejik.com/articles/2007/02/a_simple_unix_linux_daemon_in_python/).