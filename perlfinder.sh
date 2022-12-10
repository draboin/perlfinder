#!/bin/bash

# Find files with the .pl extension
find / -name "*.pl" -type f

# Search for common Perl backdoor patterns
grep -Ril "eval *( *base64_decode" /
grep -Ril "perl -MIO -e" /
grep -Ril "perl -e 'use Socket'" /
