#!/bin/bash

ng () {
        echo NG at Line ${1}
       res=1
}

res=0

out=$(seq 5 | ./plus)

[ "${out}" = 15 ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK
exit $res
