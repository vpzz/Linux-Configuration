#!/usr/bin/bash
# 存放在/usr/bin目录下，需要加上执行权限
while true; do #当断开连接后，重复启动pvserver
    pvserver
done
