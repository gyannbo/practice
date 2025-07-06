#!/bin/bash

{ echo 1; echo 2; } > /tmp/test1  #careful ';' needed here
echo 1; echo 2 > /tmp/test2

# with the grouping braces, test1 will have 1 and 2, test2 will have only 2
# need to understand what is happening in the if statement in git clean 2
