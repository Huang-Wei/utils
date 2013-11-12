#!/bin/bash
# use echo ${fun_name $1 $2 ...} or echo `fun_name $1 $2 ...`
# to call the function

# echo `strlen 'test'` => 4
function strlen() {
  echo ${#1}
}

# echo `substr 'test' 1` => est
function substr() {
  if [ -z $3 ]; then
    echo ${1:$2}
  else
    echo ${1:$2:$3}
  fi
}

# echo `strpos 'abcd1234' 'bcd'` => 2
function strpos() {
  echo $(echo $1 $2|awk '{print index($1, $2)}')
}

# echo `str_replace 'aaabbbccc' 'b' 'd'`
# notice: sed should use double quotes here, otherwise $2 will not be escaped
function str_replace() {
  echo $1 | sed "s/$2/$3/g"
}
