#!/bin/bash
CURRENT=${PWD}
/usr/local/nginx/sbin/nginx   -c $CURRENT/mynginx.conf
