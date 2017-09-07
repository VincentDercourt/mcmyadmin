#!/usr/bin/expect
spawn ./MCMA2_Linux_x86_64 -setpass changeMe -configonly
expect "Continue? \[y/n\] : "
send "y\r"
expect eof