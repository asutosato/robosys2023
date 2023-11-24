#!/bin/bash -xv
# SPDX-FileCopyrightText: 2023 Asuto Sato ast1639st@gmail.com
# SPDX-License-Identifier: BSD-3-Clause


ng () {
        echo NG at Line ${1}
       res=1
}

res=0

  ### I/O TEST ###
  out=$(echo 5 | ./judge_num)

  [ "${out}" = "5は奇数" ] || ng ${LINENO}

  ### STRANGE INPUT ###
  #out=$(./judge_num "あ")
  out=$(echo あ | ./judge_num)
  [ "$?" = 1 ]      || ng ${LINENO}
  [ "${out}" = "" ] || ng ${LINENO}

  #out=$(./judge_num "")
  out=$(echo | ./judge_num)
  [ "$?" = 1 ]      || ng ${LINENO}
  [ "${out}" = "" ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK
exit $res
