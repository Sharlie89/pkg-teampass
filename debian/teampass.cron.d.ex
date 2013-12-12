#
# Regular cron jobs for the teampass package
#
0 4	* * *	root	[ -x /usr/bin/teampass_maintenance ] && /usr/bin/teampass_maintenance
