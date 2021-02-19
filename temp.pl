#!/usr/bin/perl 
use strict;
use warnings;

my $t1 = qx(sensors | grep 'Core 0' | egrep -o '([+][0-9][0-9]\.[0-9]°C)');
my $t2 = qx(sensors | grep 'Core 1' | egrep -o '([+][0-9][0-9]\.[0-9]°C)');

$t1 =~ s/\R//g;
$t2 =~ s/\R//g;

print "$t1 $t2";
