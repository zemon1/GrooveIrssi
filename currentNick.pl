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
#       AUTHOR:  YOUR NAME (), 
#      COMPANY:  
#      VERSION:  1.0
#      CREATED:  08/02/2013 02:57:46 PM
#     REVISION:  ---
#===============================================================================

use strict;
use warnings;

use File::ChangeNotify;


my $username = $ENV{LOGNAME} || $ENV{USER} || getpwuid($<);
my $filename = $username . 'conf'

print $username;


my $watcher = File::ChangeNotify->instantiate_watcher(
    directories => ['/tmp/grooveirssi'],
    filter      => qr/m\/$filename\//,
);































