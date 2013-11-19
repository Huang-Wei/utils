#!/bin/bash
#
# File name: network.sh

# try_ping $host $try_time $try_interval(second)

try_ping() {
  local rc=-1
  local try=0
  while [[ $rc -ne 0 && $try -lt $2 ]]; do
    ((try=try+1))
    sleep $3

    ping -c 1 -w1 $1 &> /dev/null
    rc=$?
  done
  return $rc
}

google() {
  # 用于命令行google查询，或其他固定rest url后接的查询字符
  google-chrome http://www.google.com/search?q=$1
}
