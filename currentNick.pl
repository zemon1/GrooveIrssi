#!/usr/bin/perl 
#===============================================================================
#
#         FILE:  currentNick.pl
#
#        USAGE:  ./currentNick.pl  
#
#  DESCRIPTION:  
#
#      OPTIONS:  ---
# REQUIREMENTS:  ---
#         BUGS:  ---
#        NOTES:  ---
#       AUTHOR:  Jeff Haak
#      COMPANY:  
#      VERSION:  1.0
#      CREATED:  08/02/2013 02:57:46 PM
#     REVISION:  ---
#===============================================================================

use strict;
use warnings;

use File::ChangeNotify;


my $username = $ENV{LOGNAME} || $ENV{USER} || getpwuid($<);
my $filename = $username . 'conf';

print $username;


my $watcher = File::ChangeNotify->instantiate_watcher(
    directories    => ['/tmp/grooveirssi'],
    filter         => qr/m\/$filename\//,
    sleep_interval => 5,
);

if (my @events = $watcher->new_events()) {  
    print $event->path(), ' - ', $event->type(), "\n";   
}


while (my @events = $watcher->wait_for_events){ 
    print $event->path(), ' - ', $event->type(), "\n";   
}



























