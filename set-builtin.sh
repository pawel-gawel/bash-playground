#!/bin/bash

# Change + to - enable choosen option

# Print a trace of simple commands, for commands, case commands, select commands, and arithmetic for commands 
# and their arguments or associated word lists after they are expanded and before they are executed
set +x


# Print shell input lines as they are read
set +v


# Treat unset variables and parameters other than the special parameters ‘@’ or ‘*’ as an error when 
# performing parameter expansion.
set +u 

# If above is executed, expanding unset variable will fail
$unsetVar


# If set, the return value of a pipeline is the value of the last (rightmost) command 
# to exit with a non-zero status, or zero if all commands in the pipeline exit successfully
set +o pipefail

# If above is executed, this pipeline will return error from second command,
# otherwise will return exit code 0 from last command
echo this one works | exit 1 | tail -1 
echo pipeline exit code is $?


# Exit immediately if a pipeline returns a non zero status
# !! apparently requires -o pipefail to be set as well
set +o pipefail
set +e

# If above is executed, this pipeline will return error from second command,
# otherwise will return exit code 0 from last command
echo this one works | exit 1 | tail -1
echo "if set -e this will not execute"