#!/bin/bash

# if condition
# then
#     command1
#     command2
#     ...
#     commandN
# fi

# 写成一行（适用于终端命令提示符）：
# if [ $(ps -ef | grep -c "ssh") -gt 1 ]; then echo "true"; fi
#if else-if else 语法格式：
# if condition1
# then
#     command1
# elif condition2
# then
#     command2
# else
#     commandN
# fi
a=10
b=20
if [ $a == $b ]
then
   echo "a 等于 b"
elif [ $a -gt $b ]
then
   echo "a 大于 b"
elif [ $a -lt $b ]
then
   echo "a 小于 b"
else
   echo "没有符合的条件"
fi

# for 循环
# 与其他编程语言类似，Shell支持for循环。
# for循环一般格式为：
# for var in item1 item2 ... itemN
# do
#     command1
#     command2
#     ...
#     commandN
# done
for loop in 1 2 3 4 5 6
do
  echo "The vlue is: $loop"
done

for str in 'This is a string'
do
    echo $str
done

for((i=1;i<=5;i++));do
    echo "这是第 $i 次调用";
done;

# while 语句
# while循环用于不断执行一系列命令，也用于从输入文件中读取数据；命令通常为测试条件。其格式为：
# while condition
# do
#     command
# done
int=1
while(($int<=5))
do
  echo $int
  let "int++"
done

# 使用中使用了 Bash let 命令，它用于执行一个或多个表达式，变量计算中不需要加上 $ 来表示变量，具体可查阅：Bash let 命令
# 。
# while循环可用于读取键盘信息。下面的例子中，输入信息被设置为变量FILM，按<Ctrl-D>结束循环。
 echo '按下 <CTRL-D> 退出'
 echo -n '输入你最喜欢的电影名: '
 while read FILM
 do
     echo "是的！$FILM 是一部好电影"
 done
#
# 无限循环
#无限循环语法格式：

#while :
#do
#    command
#done

# Shell case语句为多选择语句。可以用case语句匹配一个值与一个模式，如果匹配成功，执行相匹配的命令。case语句格式如下：
# case 值 in
# 模式1)
#     command1
#     command2
#     ...
#     commandN
#     ;;
# 模式2）
#     command1
#     command2
#     ...
#     commandN
#     ;;
# esac
# case工作方式如上所示。取值后面必须为单词in，每一模式必须以右括号结束。取值可以为变量或常数。匹配发现取值符合某一模式后，其间所有命令开始执行直至 ;;。
# 取值将检测匹配的每一个模式。一旦模式匹配，则执行完匹配模式相应命令后不再继续其他模式。如果无一匹配模式，使用星号 * 捕获该值，再执行后面的命令。
# 下面的脚本提示输入1到4，与每一种模式进行匹配：
echo '输入 1 到 4 之间的数字:'
echo '你输入的数字为:'
read aNum
case $aNum in
    1)  echo '你选择了 1'
    ;;
    2)  echo '你选择了 2'
    ;;
    3)  echo '你选择了 3'
    ;;
    4)  echo '你选择了 4'
    ;;
    *)  echo '你没有输入 1 到 4 之间的数字'
    ;;
esac

#break
while :
do
    echo -n "输入 1 到 5 之间的数字:"
    read aNum
    case $aNum in
        1|2|3|4|5) echo "你输入的数字为 $aNum!"
        ;;
        *) echo "你输入的数字不是 1 到 5 之间的! 游戏结束"
            break
        ;;
    esac
done
