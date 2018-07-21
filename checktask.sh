#!/bin/bash
user="<user>" check_now="`pidof <task>`"
 echo $check_now > /home/$user/.checktask
if [ !  "`cat -b /home/$user/.checktask`" ]
then 
sudo /etc/init.d/<task> restart
echo "The task <task> is being restarted" | mail -s "Task Restarded" user@domain
fi
exit
