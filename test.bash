#!/bin/bash 

ng (){
	echo ${1}行目が違うよ
	res=1
}

res=0

out=$(seq 5 | ./plus)
[ "${out}" = 15 ] || ng "$LINENO"

out=$(echo あ | ./plus)
[ "$?" = 1 ]      || ng"$LINENO"
[ "${out}" = "" ] || ng"$LINENO"

out=$(echo | ./plus)
[ "$?" = 1 ]      || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"



out=$(echo 0 | ./factorial)
[ "${out}" = "1" ] || ng "$LINENO"

out=$(echo 1 | ./factorial)
[ "${out}" = "1" ] || ng "$LINENO"

out=$(echo 5 | ./factorial)
[ "${out}" = "120" ] || ng "$LINENO"

out=$(echo 7 | ./factorial)
[ "${out}" = "5040" ] || ng "$LINENO"


out=$(echo | ./factorial)
[ "$?" = 1 ]      || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo hello | ./factorial)
[ "$?" = 1 ]      || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

[ "${res}" = 0 ] && echo OK
exit $res

