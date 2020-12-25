# Author: GoogTech
# Date: 2020-12-25 19:21:49
# Webste: https://book.raspi.website
# LastEditTime: 2020-12-25 19:41:49
# Description: 树莓派自动关机命令

#!/bin/sh

# 每天 22:30 分钟执行关机命令, 1 分钟警告后会自动关机
sudo echo "30 23 * * * sudo -u root shutdown -h 1" >> /etc/crontab
