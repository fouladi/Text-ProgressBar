#! /usr/bin/env perl
use v5.14;

use lib '../lib'; # remove it - needed during test
use Text::ProgressBar::ETA;

my $timer = Text::ProgressBar::ETA->new();
say $timer->format_time(9001);
