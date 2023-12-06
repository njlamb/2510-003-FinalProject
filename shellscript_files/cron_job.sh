#!/usr/bin/env bash

# ask user which playbook they want to use
echo "Which playbook would you like to schedule a cron job for? (dev/test/prod):"
read env

# saves path to playbook
running_command="/home/njlamb42/ansible_playbooks/${env}_playbook"

# schedules a cron job for every minute for that playbook
(crontab -l ; echo "* * * * * $running_command") | crontab -

# checks to see if the cron job was successful or not
if crontab -l | grep -q "$running_command"
then
    echo "Cron job added successfully."
else
    echo "Failed to add cron job."
fi
