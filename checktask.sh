#!/bin/bash

user="user"
check_now="`pidof <task name>`"
echo $check_now > /home/$user/.checktask
if [ !  "`cat -b /home/$user/.checktask`"  ]
then
sudo /etc/init.d/<task name> restart
echo "The task <task name> is being restarted" | mail -s "Tak Restarded"  user@dominio.xx
fi
exit
