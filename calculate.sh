#/bin/bash
for i in `echo {a..z}`; do echo `echo -n "$2-"; cat $1 | grep ^$i | wc -l` | bc; done | perl -nle '$sum +=$_ } END {print $sum'
