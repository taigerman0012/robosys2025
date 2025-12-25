#!/bin/bash -xv
# SPDX-FileCopyrightText: 2025 Taiga Doi
# SPDX-License-Identifier: BSD-3-Clause

ng () {
        echo ${1}行目が違うよ
        res=1
}

res=0

out=$(./report 2 3)
[ "$?" = 0 ] || ng "$LINENO"
out=$(echo "$out" | tail -n 1)
[ "${out}" = "2.0 ^ 3 = 8.0" ] || ng "$LINENO"

out=$(./report 10 1)
[ "$?" = 0 ] || ng "$LINENO"
out=$(echo "$out" | tail -n 1)
[ "${out}" = "10.0 ^ 1 = 10.0" ] || ng "$LINENO"

out=$(./report)
[ "$?" = 0 ] && ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

[ "$res" = 0 ] && echo OK
exit $res
