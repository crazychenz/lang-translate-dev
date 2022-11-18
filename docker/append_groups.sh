#!/bin/sh

username="$1"
shift
for g in $@; do usermod -aG ${g} $username ; done
exit 0
