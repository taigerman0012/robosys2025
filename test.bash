#!/bin/bash -xv
# SPDX-FileCopyrigtText: 2025 Taiga Doi
# SPDX-License-Identifier: BSD-3-Clause

ng () {
        echo ${1}行目が違うよ
	res=1
}

res=0

out=$(echo 1 2 3 4 | ./robosyshw1 2>&1)
[ "${out}" = "((1+2)+3)+4 = 10" ] || ng "$LINENO"

out=$(echo 1 1 1 1 | ./robosyshw1 2>&1)
[ "${out}" = "no answer" ] || ng "$LINENO"

[ "$res" = 0 ] && echo OK
exit $res
