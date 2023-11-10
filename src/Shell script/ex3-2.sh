#!/bin/sh

read num1 operator num2

add=$(expr $num1 + $num2)
sub=$(expr $num1 - $num2)

# 계산 결과 출력
case $operator in
    '+')
        echo "덧셈 결과: $add";;
    '-')
        echo "뺄셈 결과: $sub";;
    *)
        echo "지원하지 않는 연산자입니다.";;
esac

exit 0

