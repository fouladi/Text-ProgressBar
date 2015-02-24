#! /usr/bin/env perl
use Time::HiRes qw/sleep/;

use lib '../lib'; # remove it - needed during test
use Text::ProgressBar::Bar;
use Text::ProgressBar::ReverseBar;
use Text::ProgressBar::BouncingBar;
use Text::ProgressBar::SimpleProgress;
use Text::ProgressBar::Counter;
use Text::ProgressBar::AnimatedMarker;
use Text::ProgressBar::FileTransferSpeed;
use Text::ProgressBar::Timer;
use Text::ProgressBar::ETA;
use Text::ProgressBar::FormatLabel;

sub Bar {
    my $pbar = Text::ProgressBar->new(maxval => 300);
    $pbar->start();
    for my $i (1..300) {
        sleep 0.01;
        $pbar->update($i+1);
    }
    $pbar->finish;
}
sub ReverseBar {
    my $prevbar = Text::ProgressBar->new(maxval => 300, widgets  => [Text::ProgressBar::Percentage->new(), Text::ProgressBar::ReverseBar->new()]);
    $prevbar->start();
    for my $i (1..300) {
        sleep 0.01;
        $prevbar->update($i+1);
    }
    $prevbar->finish;
}
sub BouncingBar {
    my $pbouncbar = Text::ProgressBar->new(maxval => 300, widgets  => [Text::ProgressBar::Percentage->new(), Text::ProgressBar::BouncingBar->new()]);
    $pbouncbar->start();
    for my $i (1..300) {
        sleep 0.05;
        $pbouncbar->update($i+1);
    }
    $pbouncbar->finish;
}

sub SimpleProgress {
    my $psimplebar = Text::ProgressBar->new(maxval => 17, widgets  => [Text::ProgressBar::SimpleProgress->new()]);
    $psimplebar->start();
    for my $i (1..17) {
        sleep 0.2;
        $psimplebar->update($i+1);
    }
    $psimplebar->finish;
}

sub Counter{
    my $bar = Text::ProgressBar->new(maxval => 17, widgets  => [Text::ProgressBar::Counter->new()]);
    $bar->start();
    for my $i (1..17) {
        sleep 0.2;
        $bar->update($i+1);
    }
    $bar->finish;
}

sub AnimatedMarker1 {
    my $bar = Text::ProgressBar->new(widgets => [Text::ProgressBar::AnimatedMarker->new()]);
    $bar->start();
    for my $i (1..50) {
        sleep 0.08;
        $bar->update($i+1);
    }
    $bar->finish;
}

sub AnimatedMarker2 {
    my $bar = Text::ProgressBar->new(widgets => [Text::ProgressBar::AnimatedMarker->new(markers  => '.oO@* ')]);
    $bar->start();
    for my $i (1..50) {
        sleep 0.08;
        $bar->update($i+1);
    }
    $bar->finish;
}

sub FileTransferSpeed {
    my $bar = Text::ProgressBar->new(maxval=>10000000, widgets => [Text::ProgressBar::FileTransferSpeed->new()]);
    $bar->start();
    for my $i (1..10000) {
        $bar->update($i+1);
    }
    $bar->finish;
}

sub Timer {
    my $bar = Text::ProgressBar->new(widgets => [Text::ProgressBar::Timer->new()]);
    $bar->start();
    for my $i (1..150) {
        sleep 0.1;
        $bar->update($i+1);
    }
    $bar->finish;
}

sub ETA {
    my $bar = Text::ProgressBar->new(widgets => [Text::ProgressBar::ETA->new()]);
    $bar->start();
    for my $i (1..100) {
        sleep 0.2;
        $bar->update($i+1);
    }
    $bar->finish;
}

sub FormatLabel {
    my $bar = Text::ProgressBar->new(widgets => [Text::ProgressBar::FormatLabel->new(format_string => 'Processed: currval lines (in: seconds_elapsed seconds)')]);
    $bar->start();
    for my $i (1..100) {
        sleep 0.2;
        $bar->update($i+1);
    }
    $bar->finish;
}

Bar();
ReverseBar();
BouncingBar();
SimpleProgress();
Counter();
AnimatedMarker1();
AnimatedMarker2();
FileTransferSpeed();
Timer();
ETA();
FormatLabel();
