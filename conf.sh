#!/bin/bash
chkconfig --add iptables 
chkconfig iptables off
yum install vim -y
echo 'alias vi='vim'' >> ~/.bashrc
source ~/.bashrc
sed -i 's/SELINUX=enforcing/SELINUX=disabled/' /etc/selinux/config 
