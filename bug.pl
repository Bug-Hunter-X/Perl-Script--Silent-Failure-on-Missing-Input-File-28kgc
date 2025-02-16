#!/usr/bin/perl
use strict;
use warnings;

my $count = 0;
my $file = 'input.txt';
open(my $fh, '<', $file) or die "Could not open file '$file' $!";

while (my $line = <$fh>) {
    chomp $line;
    if ($line =~ /pattern/) {
        $count++;
    }
}

close $fh;
print "Count: $count\n";