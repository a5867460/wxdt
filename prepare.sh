#!/bin/bash
groupmod -g $gid root
usermod -u $uid -g $gid root
