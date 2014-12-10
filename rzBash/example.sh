#!/bin/bash 

# We do need next 2 lines to load magic file.
__dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source ${__dir}/lib/magic.sh

# load lib/assert.sh file.
import assert

# use function from assert.sh
assertEqual 1 $#

# color.sh has been imported inside magic.sh.
echoerror ${__dir}
echovalid ${__root}
echowarn ${__file}
echo ${__base}


