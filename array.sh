#!/bin/bash
# my_array[0]=A
# my_array[1]=B
# my_array[2]=C
# my_array[3]=D
my_array=(A B "C" D)

echo "第一个元素为: ${my_array[0]}"
echo "第二个元素为: ${my_array[1]}"
echo "第三个元素为: ${my_array[2]}"
echo "第四个元素为: ${my_array[3]}"

# get all item
echo "数组的元素为: ${my_array[*]}"
echo "数组的元素为: ${my_array[@]}"

# get array length
echo "数组元素的长度为： ${#my_array[*]}"
echo "数组元素的长度为： ${#my_array[@]}"
