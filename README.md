# Meetup nginx 08/2014


 * Install nginx: ```./nginx/install.sh ```
 * Add this lines in /etc/hosts: 
 	```
    127.0.0.1  www.perl.com
    127.0.0.1  www.bash.com
 ```
 * Start perl servers: 
 	```
    ./perl/server.pl 8082
	./perl/server.pl 8083
 ```
 * Start bash server: ```./bash/server.sh 8081 ```
 * Start nginx: ```./nginx/start.sh ```

 Goto http://www.perl.com:8080/perl

 Slides: http://www.slideshare.net/mszuchman/meet-up-nginx-082014

