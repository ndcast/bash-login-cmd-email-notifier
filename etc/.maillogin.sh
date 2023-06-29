#!/bin/bash
#Set variables
#Get the HOST or IP from where is being logged in.

info=$(who | head -n1 | cut -d'(' -f2 | cut -d')' -f1)
EMAIL_SUBJECT="Alert: Access to there server from $info "
file=/tmp/mailalert.txt
if [ -z $2 ];
then
    EMAIL_TO="YourEmail@gmail.com"
else
    EMAIL_TO="$1"
fi

if [ -z $1 ];
then
EMAIL_SUBJECT="Alert YourServer.com :SSH Access from $info "
  EMAIL_MESSAGE="$(
  date
  echo
  who
  )"
  echo $EMAIL_MESSAGE | mail -s "$(echo -e "`echo $EMAIL_SUBJECT`\nContent-Type: text/plain")" $EMAIL_TO

else
  EMAIL_SUBJECT="Alert YourServer.com : RM executed from $info "
#  history | tail -n5 | cut -d" " -f4-6 | grep rm | tail -n 1 > /tmp/mailalert.txt
  cat /tmp/mailalert.txt | mail -s "$(echo -e "`echo $EMAIL_SUBJECT`\nContent-Type: text/plain")" $EMAIL_TO
fi
