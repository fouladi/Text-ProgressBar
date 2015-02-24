#! /usr/bin/env perl
use v5.14;

use lib '../lib'; # remove it - needed during test
use Text::ProgressBar::Counter;

my $counter = Text::ProgressBar::Counter->new();
$counter->update();

sub foo {
    print "hhh\n";
};
