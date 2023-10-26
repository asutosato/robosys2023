#!/bin/bash
# SPDX-FileCopyrightText: 2023 Asuto Sato ast1639st@gmail.com
# SPDX-License-Identifier: BSD-3-Clause


ng () {
        echo NG at Line ${1}
       res=1
}

res=0

  ### I/O ###
  out=$(seq 5 | ./plus)

  [ "${out}" = 15 ] || ng ${LINENO}

  ### STRANGE INPUT ###
  out=$(echo あ | ./plus)
  [ "$?" = 1 ]      || ng ${LINENO}
  [ "${out}" = "" ] || ng ${LINENO}

  out=$(echo | ./plus)
  [ "$?" = 1 ]      || ng ${LINENO}
  [ "${out}" = "" ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK
exit $res
