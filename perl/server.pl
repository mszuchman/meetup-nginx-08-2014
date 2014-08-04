#!/usr/bin/perl

use strict;
use warnings;
use IO::Socket::INET;
 
my $sock = new IO::Socket::INET ( LocalAddr => "127.0.0.1:".$ARGV[0],
                                  Listen    => 1,
                                  Reuse     => 1, ) or die "Could not create socket: $!";
 
while( my $client = $sock->accept() ){
  print $client "HTTP/1.1 200 OK\r\n" .
                "X-Server: perl; \r\n\r\n";
  my $filename = 'content.html';
  
  open(my $fh, '<:encoding(UTF-8)', $filename)
  or die "Could not open file '$filename' $!";

  while (my $row = <$fh>) {
    chomp $row;
    print $client "$row\n";
  }
  print "";
  close $client;
  close $fh
}
