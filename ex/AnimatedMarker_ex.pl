#! /usr/bin/env perl
use v5.14;

use lib '../lib'; # remove it - needed during test
use Text::ProgressBar::AnimatedMarker;

my $anim = Text::ProgressBar::AnimatedMarker->new();
$anim->update();

sub foo {
    print "hhh\n";
};
