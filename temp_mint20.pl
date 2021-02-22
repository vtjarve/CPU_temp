#!/usr/bin/perl 
use strict;
use warnings;

my $t1 = qx(sensors | grep 'Core 0');
my $t2 = qx(sensors | grep 'Core 1');

$t1 =~ /.*\s(\+.+°C)\s.*/;
$t1 = $1;

$t2 =~ /.*\s(\+.+°C)\s.*/;
$t2 = $1;

print "$t1 $t2";
