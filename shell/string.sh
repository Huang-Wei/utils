#!/bin/bash
# File name: string.sh
# use echo ${fun_name $1 $2 ...} or echo `fun_name $1 $2 ...`
# to call the function

# echo `strlen 'test'` => 4
strlen() {
  echo ${#1}
}

# echo `substr 'test' 1` => est
substr() {
  if [ -z $3 ]; then
    echo ${1:$2}
  else
    echo ${1:$2:$3}
  fi
}

# echo `strpos 'abcd1234' 'bcd'` => 2
strpos() {
  echo $(echo $1 $2|awk '{print index($1, $2)}')
}

# echo `str_replace 'aaabbbccc' 'b' 'd'`
# use builtin command, rather than sed
# is sed was used, use double quotes here, otherwise $2 will not be escaped
str_replace() {
  # use builtin command, rather than sed
  echo $1 | sed "s/$2/$3/g"
}
