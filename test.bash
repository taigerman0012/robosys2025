#!/bin/bash -xv
# SPDX-FileCopyrightText: 2025 Taiga Doi
# SPDX-License-Identifier: BSD-3-Clause

ng () {
        echo ${1}行目が違うよ
        res=1
}

res=0

out=$(echo "2 3" | ./report)
[ "$?" = 0 ] || ng "$LINENO"
out=$(echo "$out" | tail -n 1)
[ "${out}" = "8.0" ] || ng "$LINENO"

out=$(echo "10 1" | ./report)
[ "$?" = 0 ] || ng "$LINENO"
out=$(echo "$out" | tail -n 1)
[ "${out}" = "10.0" ] || ng "$LINENO"

out=$(echo "" | ./report)
[ "$?" = 0 ] && ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

[ "$res" = 0 ] && echo OK
exit $res
