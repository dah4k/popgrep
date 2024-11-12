#!/usr/bin/env python3
# popgrep1 - grep for abbreviations of places that say "pop"
# version 1: slow but obvious way
import re
import sys
popstates = ['CO', 'ON', 'MI', 'WI', 'MN']
for line in sys.stdin:
    for state in popstates:
        pattern = re.compile(r"\b" + state + r"\b")
        if pattern.search(line):
            print(line, end='')
            break
