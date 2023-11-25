#!/bin/bash -xv
# SPDX-FileCopyrightText: 2023 Asuto Sato ast1639st@gmail.com
# SPDX-License-Identifier: BSD-3-Clause


ng () {
        echo NG at Line ${1}
       res=1
}

res=0

  ### I/O TEST ###
  out=$(seq 5 | ./average)

  [ "${out}" = 3.0 ] || ng ${LINENO}

  ### STRANGE INPUT ###
  out=$(echo あ | ./average)
  [ "$?" = 1 ]      || ng ${LINENO}
  [ "${out}" = "" ] || ng ${LINENO}

  out=$(echo | ./average)
  [ "$?" = 1 ]      || ng ${LINENO}
  [ "${out}" = "" ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK
exit $res
