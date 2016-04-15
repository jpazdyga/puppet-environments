#!/bin/sh
echo environment=`/usr/bin/grep environment /etc/puppet/puppet.conf | awk '{print $3}'`
