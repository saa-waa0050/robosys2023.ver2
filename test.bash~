#!/bin/bash -xv
#SPDX-FileCopyrightText: 2022 Shusuek Osawa
#SPDX-License-Identifier: BSD-3-Clause

ng (){
	echo NG at line $1
	res=1
}

res=0

out=$(seq 5|./plus)
[ "${out}" = 15 ] || ng ${LINENO}

out=$(echo あ|./plus)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(echo |./plus)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK



out=$(seq 5|./times)
[ "${out}" = 120 ] || ng ${LINENO}

out=$(echo あ|./times)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(echo |./times)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK



out=$(seq 5|./avg)
[ "${out}" = 3 ] || ng ${LINENO}

out=$(echo あ|./avg)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(echo |./avg)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK
exit $res
