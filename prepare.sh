#!/bin/bash
groupmod -g $gid root
usermod -u $uid -g $gid root

/wxdt/wechat_web_devtools/bin/wxdt

