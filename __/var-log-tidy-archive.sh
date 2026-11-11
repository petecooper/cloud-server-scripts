#!/bin/bash
rm -f \
/var/log/auth.log.* \
/var/log/cloud-init.log.* \
/var/log/cron.log.* \
/var/log/dpkg.log.* \
/var/log/fail2ban.log.* \
/var/log/kern.log.* \
/var/log/syslog.* \
/var/log/ufw.log.* \
/var/log/user.log.*
