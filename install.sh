#!/usr/bin/expect

set PASSWORD [lindex $argv 0]

spawn ./MCMA2_Linux_x86_64 -setpass $PASSWORD -configonly
expect "Continue? \[y/n\] : "
send "y\r"
expect eof