# bash-login-cmd-email-notifier
Use it to get an alert whenever someone/you logs in your server and if it runs any given commnd.

In this example
- /etc/.maillogin is for the general notification (takes argument for the notifier logger)
- /etc/mail.rc  is default OS config for emailing, I just added the Config For GMAIL.
- /tmp/mailalert.tmp   is just a file that must exist in order for the r notifier to work
- add-rm-notifier.sh  literally alters the rm command (which is the cmd part, you can customize it)



