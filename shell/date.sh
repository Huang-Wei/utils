#!/bin/bash

# File name: date.sh

cur_date() {
  echo $(date +'%Y-%m-%d %H:%M:%S')
  # echo $(date +'%Y-%m-%dT%H:%M:%S%z')
}

cur_date