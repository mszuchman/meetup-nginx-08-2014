
0) Install nginx
	./nginx/install.sh
1)  Add this lines in /etc/hosts:
		127.0.0.1  www.perl.com
		127.0.0.1  www.bash.com
3) Start perl servers
	./perl/server.pl 8082
	./perl/server.pl 8083
 	./bash/server.sh 8081
4) Start nginx
	./nginx/start.sh
5) goto www.perl.com:8080/perl

Slides: http://www.slideshare.net/mszuchman/meet-up-nginx-082014
