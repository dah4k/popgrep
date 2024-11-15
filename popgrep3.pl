#!/usr/bin/perl
# popgrep3 - grep for abbreviations of places that say "pop"
# version 3: use build_match_func algorithm
@popstates = qw(CO ON MI WI MN);
$expr = join('||', map { "m/\\b\$popstates[$_]\\b/o" } 0..$#popstates);
$match_any = eval "sub { $expr }";
die if $@;
while (<>) {
    print if &$match_any;
}
