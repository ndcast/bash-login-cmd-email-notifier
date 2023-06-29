#!/bin/bash/
#Using RM as example, for its the most widely use case for me.
addline='history | tail | cut -d" " -f4-6 | grep -e cd -e rm  > /tmp/mailalert.txt && /etc/.maillogin.sh 1 && rm' ;
echo "alias rm2='$addline' >> /etc/profile
