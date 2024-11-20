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



out=$(./factorial 0)
[ "${out}" = "1" ] || ng "$LINENO"

out=$(./factorial 1)
[ "${out}" = "1" ] || ng "$LINENO"

out=$(./factorial 5)
[ "${out}" = "120" ] || ng "$LINENO"

out=$(./factorial 7)
[ "${out}" = "5040" ] || ng "$LINENO"


out=$(./factorial )
[ "$?" = 1 ]      || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(./factorial hello ) #2>/dev/null)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng"$LINENO"

out=$(./factorial)  #2>/dev/null)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng"$LINENO"


[ "${res}" = 0 ] && echo OK
exit $res

