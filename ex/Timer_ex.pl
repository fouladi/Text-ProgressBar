#! /usr/bin/env perl
use v5.14;

use lib '../lib'; # remove it - needed during test
use Text::ProgressBar::Timer;

my $timer = Text::ProgressBar::Timer->new(format_string  => 'H');
say $timer->format_time(9001);
