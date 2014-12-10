#!/usr/bin/env bash

#
# set some magic values, like file, directory.
#
setMagic()
{
  set -o errexit
  set -o pipefail
  set -o nounset
  # set -o xtrace

  # this will follow to parent script.
  local filename=$(readlink -f $0)
  # this is the current script.
  # ${BASH_SOURCE[0]}

  # Set magic variables for current file & dir
  __dir="$(cd "$(dirname "${filename}")" && pwd)"
  __root="$(cd "$(dirname "${__dir}")" && pwd)" # <-- change this
  __file="${__dir}/$(basename "${filename}")"
  __base="$(basename ${__file} .sh)"

  #arg1="${1:-}"
}

setMagic

#
# import a file under lib/
#
# example: import assert
#
import()
{
  if [ -f ${__dir}/lib/$1.sh ]
  then
    source ${__dir}/lib/$1.sh
  else 
    echo "file [ $1 ] not found!"
    exit 1
  fi
}

import color
