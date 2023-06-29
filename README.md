# bash-login-cmd-email-notifier
Use it to get an alert whenever someone/you logs in your server and if it runs any given commnd.

In this example
- /etc/.maillogin is for the general notification (takes argument for the notifier logger)
- /etc/mail.rc  is default OS config for emailing, I just added the Config For GMAIL.
- /tmp/mailalert.tmp   is just a file that must exist in order for the r notifier to work
- add-rm-notifier.sh  literally alters the rm command (which is the cmd part, you can customize it)

If you get error while trying to send
Something like this:

      Resolving host smtp.gmail.com . . . done.
      Connecting to 74.125.25.108 . . . connected.
      COMMENT-->then it waits there for about 5 mins then spits out this:
      SSL/TLS handshake failed: Unknown error -5938.
      "/home/USER/dead.letter" 11/354
      . . . message not sent.
Refer to this solution
https://stackoverflow.com/questions/16799407/mailx-and-gmail-nss-config-dir
