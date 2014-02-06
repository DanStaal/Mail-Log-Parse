#!perl

use Test::More;
eval { require Test::Kwalitee };
plan skip_all => 'Author tests.' unless ( getpwuid($<) eq 'dstaal' or getpwuid($<) eq 'dtstaal' );
plan( skip_all => 'Test::Kwalitee not installed; skipping' ) if $@;
Test::Kwalitee->import();
