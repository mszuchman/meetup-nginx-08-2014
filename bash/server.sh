#!/bin/bash
while true; do { echo -e 'HTTP/1.1 200 OK\nX-Server: bash \r\n'; cat content.html; } | nc -l 8081; done

