# Author: GoogTech
# Date: 2020-12-25 19:52:44
# Webste: https://book.raspi.website
# LastEditTime: 2020-12-25 19:52:44
# Description: 当树莓派开机后自动运行指定任务

#!/bin/sh

# 使用 sed 在 rc.local 中 "exit 0" 一行前面添代码: su pi -c "exec runWeather.py.sh"
# sed -i '/exit 0 / ; su pi -c "exec runWeather.py.sh"' /etc/rc.local

# 或使用如下方式, 首先删除文件最后一行的内容, 即 "exit 0"
head -n -1 /etc/rc.local > /etc/rc-temp.local ; mv /etc/rc-temp.local /etc/rc.local
# 然后将命令 su pi -c "exec runWeather.py.sh" 及 "exit 0" 分别追加文件底部
echo 'su pi -c "exec runWeather.py.sh"' >> /etc/rc.local
echo 'exit 0' >> /etc/rc.local
