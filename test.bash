#!/bin/bash -xv
#SPDX-FileCopyrightText: 2022 Shusuek Osawa
#SPDX-License-Identifier: BSD-3-Clause

ng (){
	echo NG at line $1
	res=1
}

res=0

out=$(seq 5|./calculator.py)
[ "${out}" = 15 ] || ng ${LINENO}

out=$(echo あ|./calculator.py)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(echo |./calculator.py)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK
exit $res
