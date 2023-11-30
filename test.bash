#!/bin/bash -xv
#SPDX-FileCopyrightText: 2022 Shusuek Osawa
#SPDX-License-Identifier: BSD-3-Clause


#エラー行を教えてくれる
ng (){
	echo NG at line $1
	res=1
}

res=0

#各テストここから
#plus
out=$(seq 5|./plus)
[ "${out}" = 15 ] || ng ${LINENO}

out=$(tail -n 2 ans_log.txt|head -n 1)
[ "${out}" = "sum-> 15" ] || ng ${LINENO}

out=$(echo あ|./plus)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(echo @|./plus)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(echo /n|./plus)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(echo |./plus)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK

#times
out=$(seq 5|./times)
[ "${out}" = 120 ] || ng ${LINENO}

out=$(tail -n 2 ans_log.txt|head -n 1)
[ "${out}" = "times-> 120" ] || ng ${LINENO}

out=$(echo あ|./times)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(echo @|./times)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(echo /n|./times)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(echo |./times)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK


#avg
out=$(seq 5|./avg)
[ "${out}" = 3 ] || ng ${LINENO}

out=$(tail -n 2 ans_log.txt|head -n 1)
[ "${out}" = "avg-> 3" ] || ng ${LINENO}

out=$(echo あ|./avg)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(echo @|./avg)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(echo /n|./avg)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(echo |./avg)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK

#normalize
out=$(echo 5|./normalize)
[ "${out}" = 5 ] || ng ${LINENO}

out=$(echo 5.5|./normalize)
[ "${out}" = 5.5 ] || ng ${LINENO}

out=$(echo ５．５|./normalize)
[ "${out}" = 5.5 ] || ng ${LINENO}

out=$(echo -5.5|./normalize)
[ "${out}" = -5.5 ] || ng ${LINENO}

out=$(echo あ|./normalize)
[ "$?" = 0 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(echo |./normalize)
[ "$?" = 0 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(echo /n|./normalize)
[ "$?" = 0 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(echo @|./normalize)
[ "$?" = 0 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

#各テストここまで

[ "$res" = 0 ] && echo OK

exit $res
