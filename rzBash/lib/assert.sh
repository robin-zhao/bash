#!/usr/bin/env bash
#
# @author Jian (Robin) ZHAO
# @email boborabit@gmail.com
#
# Helpful assert functions.

#
# assertEqual {expected} {actual}
#
assertEqual()
{
  if [ $# -lt 2 ]
  then 
    echoerror "assertEqual need two arguments!"
    exit 1
  else
    if [ $1 != $2 ]
    then
      echoerror "[ $1 ] not equal to [ $2 ]"
      exit 1
    fi
  fi
}

assertDirectory()
{
  if [ ! -d $1 ]
  then 
    echoerror "Argument 1 is not a directory!"
    exit 1
  fi
}

assertFile()
{
  if [ ! -f $1 ]
  then 
    echoerror "Argument 1 is not a file!"
    exit 1
  fi
}

assertRoot()
{
  if [ ${UID} -ne 0 ]
  then
    echoerror "You must be root to run this script!"
    exit 1
  fi
}

