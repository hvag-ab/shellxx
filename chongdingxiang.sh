#!/bin/bash

#命令的输出不仅可以是显示器，还可以很容易的转移向到文件，这被称为输出重定向。

#输出重定向  用>
echo line 1 > users    #输出重定向会覆盖文件内容
echo line 2 >> users   #使用 >> 追加到文件末尾
#查看
cat users

#输入重定向,可以从文件获取输入    用<
#计算 users 文件中的行数
wc -l users

#输入重定向到 users 文件
wc -l < users

#如果希望执行某个命令，但又不希望在屏幕上显示输出结果，那么可以将输出重定向到 /dev/null：

#如果希望屏蔽 stdout 和 stderr，可以这样写：
command > /dev/null 2>&1

#如果希望将 stdout 和 stderr 合并后重定向到 file，可以这样写
command > file 2>&1

#命令	说明
#command > file	将输出重定向到 file。
#command < file	将输入重定向到 file。
#command >> file	将输出以追加的方式重定向到 file。
#n > file	将文件描述符为 n 的文件重定向到 file。
#n >> file	将文件描述符为 n 的文件以追加的方式重定向到 file。
#n >& m	将输出文件 m 和 n 合并。
#n <& m	将输入文件 m 和 n 合并。
#<< tag	将开始标记 tag 和结束标记 tag 之间的内容作为输入。

#注意：0 是标准输入（STDIN），1 是标准输出（STDOUT），2 是标准错误输出（STDERR）

1. >/dev/null
这条命令的作用是将标准输出1重定向到/dev/null中。/dev/null代表linux的空设备文件，所有往这个文件里面写入的内容都会丢失，俗称“黑洞”。那么执行了>/dev/null之后，标准输出就会不再存在，没有任何地方能够找到输出的内容。

2. 2>&1
这条命令用到了重定向绑定，采用&可以将两个输出绑定在一起。这条命令的作用是错误输出将和标准输出同用一个文件描述符，就是错误输出将会和标准输出输出到同一个地方。

命令	        标准输出	错误输出
>/dev/null 2>&1	丢弃	丢弃
2>&1 >/dev/null	丢弃	屏幕

#Here Document 是 Shell 中的一种特殊的重定向方式，用来将输入重定向到一个交互式 Shell 脚本或程序。
#
#它的基本的形式如下：
#
#command << delimiter
#    document
#delimiter
#它的作用是将两个 delimiter 之间的内容(document) 作为输入传递给 command。
#
#注意：
#
#结尾的delimiter 一定要顶格写，前面不能有任何字符，后面也不能有任何字符，包括空格和 tab 缩进。
#开始的delimiter前后的空格会被忽略掉。

cat << EOF
  hello world
EOF
