#THIS IS A BASIC APACHE2 CONFIGURATION FILE FOR TEAMPASS. PLEASE EDIT IT PROPERLY UNTIL STARTS A PRODUCTION SERVER
#MOVE THE EXAMPLE FILE FROM /etc/teampass/teampass.conf.ex TO /etc/apache2/sites-availables/teampass.conf , THEN EXEC THE FOLLOWING COMMANDS
# a2ensite teampass.conf
# service apache2 reload

#IF YOU DON'T WANT TO USE IT, PLEASE DELETE THE FILE

<VirtualHost *:80>
        ServerAdmin webmaster@localhost

        DocumentRoot /srv/teampass
        <Directory />
                Options FollowSymLinks
                AllowOverride None
        </Directory>
        <Directory /srv/teampass/>
                Options Indexes FollowSymLinks MultiViews
                AllowOverride None
                Order allow,deny
                allow from all
        </Directory>

        ScriptAlias /cgi-bin/ /usr/lib/cgi-bin/
        <Directory "/usr/lib/cgi-bin">
                AllowOverride None
                Options +ExecCGI -MultiViews +SymLinksIfOwnerMatch
                Order allow,deny
                Allow from all
        </Directory>

        ErrorLog ${APACHE_LOG_DIR}/teampass_error.log

        # Possible values include: debug, info, notice, warn, error, crit,
        # alert, emerg.
        LogLevel warn

        CustomLog ${APACHE_LOG_DIR}/teampass_access.log combined
</VirtualHost>

