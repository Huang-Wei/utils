#!/bin/bash
# File name: error.sh

check_error() {
  if [[ $1 -ne 0 ]]; then
    # echo ""
    echo "ERROR # $1 : $2"
    exit $1
  fi
}

#