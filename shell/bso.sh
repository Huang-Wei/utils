#!/usr/bin/expect
#
# File name: bso.sh

spawn telnet 9.123.120.77
expect "Username:"
send "hweicdl@cn.ibm.com\r"
expect "Password:"
# use {} rather than "" to represent the whole string
# see TCL String format for details
set pass {********}
send "$pass\r"

expect "Connection closed by foreign host."