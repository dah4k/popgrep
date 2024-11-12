#!/usr/bin/perl -w
# popgrep1 - grep for abbreviations of places that say "pop"
# version 1: slow but obvious way
@popstates = qw(CO ON MI WI MN);
LINE: while (defined($line = <>)) {
    for $state (@popstates) {
        if ($line =~ /\b$state\b/) {
            print $line; next LINE;
        }
    }
}
