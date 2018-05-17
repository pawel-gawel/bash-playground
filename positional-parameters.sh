#!/bin/bash

# If any arguments follow this option, the positional parameters are set to the arguments.
set -- first second third
echo "It sets $# positional parameters: $1, $2 and $3"

# It shifts positional parameters to the left by n positions
shift 2
echo "There is now $# parameter that used to be $1"

# If no arguments follow this option, then the positional parameters are unset. 
set --
echo "Now we have $# positional parameters"

