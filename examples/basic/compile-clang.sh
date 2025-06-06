#!/bin/sh
# Assumes that the boflink executable exists and is located in the user's PATH.

# Get the path to the 'boflink' executable
boflink=$(which boflink)

command="clang --ld-path=$boflink --target=x86_64-windows-gnu -nostartfiles -o basic.bof basic.c"
echo $command
eval $command
