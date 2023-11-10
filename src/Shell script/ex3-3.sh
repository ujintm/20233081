#!/bin/sh

read height weight

bmi=$(echo "scale=2; $weight / ($height / 100 * $height / 100)" | bc)

if [ $(echo "$bmi < 18.5" | bc) -eq 1 ]; then
    echo "저체중입니다"
elif [ $(echo "$bmi >= 18.5 && $bmi < 25" | bc) -eq 1 ]; then
    echo "정상체중입니다"
else
    echo "과체중입니다"
fi
