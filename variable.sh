#!/bin/bash

#切记，区别于php，变量赋值左右不能有空格，一定要注意，但是运算必须有空格
#变量声明如下，明明规范等于php，默认Bash shell都会识别为字符串，如果值包含空格等必须使用引号包围
variable=value
variable='value'
variable=" value"

#使用如下，{}是可选的，加不加都行，加花括号是为了帮助解释器识别变量的边界
#推荐给所有变量加上花括号{ }，这是个良好的编程习惯。
author="hvag"
echo $author
echo ${author}

skill="Java"
echo "I am good at ${skill}Script"

#和php一样，变量可以被重新赋值
url="aa"
echo ${url}
url="bb"
echo ${url}

#值的引号使用等于php，单引号不解析变量，且不转义字符，双引号解析变量可以转义字符，所以如果不是原样输出，没有特殊需要最好都用双引号

#变量的赋值有两种，推荐使用第二种，如下
log=`cat test.txt`    #使用反引号，用以和单引号混淆 #反引号 执行 bash命令
echo $log
log=$(cat test.txt)    #使用()号，推荐使用
echo $log

#只读变量
readonly url="aa"
url="bb"
#会报错：url: readonly variable

#删除变量使用unset,等于php
url="aa"
unset url

#如果输出内容里包含转义字符
a=10
echo -e "value of a is $a \n"
#这里加上-e 表示对转义字符进行替换，表示输出的结尾加上换行
value of a is 10

#如果这里不加上-e的话，则会原样输出：
value of a is 10\n

#可以使用 echo 命令的 -E 选项禁止转义，默认也是不转义的；使用 -n 选项可以禁止插入换行符。

#\\	反斜线
#\a	警报、响铃
#\b	退格（删除键）
#\f	换页(FF)，将当前位置移到下页开头
#\n	换行
#\r	回车
#\t	水平制表符（tab键）
#\v	垂直制表符




#变量类型
#运行shell时，会同时存在三种变量：
#1) 局部变量
#局部变量在脚本或命令中定义，仅在当前shell实例中有效，其他shell启动的程序不能访问局部变量。
#2) 环境变量
#所有的程序，包括shell启动的程序，都能访问环境变量，有些程序需要环境变量来保证其正常运行。必要的时候shell脚本也可以定义环境变量。
#3) shell变量
#shell变量是由shell程序设置的特殊变量。shell变量中有一部分是环境变量，有一部分是局部变量，这些变量保证了shell的正常运行

#单引号
str1='this is a string'
#单引号字符串的限制：
#
#单引号里的任何字符都会原样输出，单引号字符串中的变量是无效的；
#单引号字串中不能出现单独一个的单引号（对单引号使用转义符后也不行），但可成对出现，作为字符串拼接使用。

#双引号
your_name='runoob'
str2="Hello, I know you are \"$your_name\"! \n"
echo -e $str2
#输出结果为：
#
#Hello, I know you are "runoob"!
#双引号的优点：
#
#双引号里可以有变量
#双引号里可以出现转义字符

###拼接字符串
your_name="runoob"
# 使用双引号拼接
greeting="hello, "$your_name" !"
greeting_1="hello, ${your_name} !"
echo $greeting  $greeting_1
# 使用单引号拼接
greeting_2='hello, '$your_name' !'
greeting_3='hello, ${your_name} !'
echo $greeting_2  $greeting_3

#长度
echo ${#string} #输出 4

#提取子字符串
#以下实例从字符串第 2 个字符开始截取 4 个字符：

string="runoob is a great site"
echo ${string:1:4} # 输出 unoo
#注意：第一个字符的索引值为 0。

#查找子字符串
#查找字符 i 或 o 的位置(哪个字母先出现就计算哪个)：

string="runoob is a great site"
echo `expr index "$string" io`  # 输出 4

