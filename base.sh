#!/bin/bash
#约定脚本使用的解释器

echo $PATH #获取环境变量路径
echo $SHELL #获取默认shell默认使用环境变量


#在环境路径下建立xx.sh文件内容如下



#范例脚本
echo "what is your name"
read person    #这里使用read命令获取stdin命令窗口输入内容获取变量
echo "hello,$person"

#写完后保存

#给予权限

#chmod -x xx.sh

#提示：w:读  r:写 x:执行

#完成后执行，切记一定要./开头:
#./xx.sh
