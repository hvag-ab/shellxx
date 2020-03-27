#包含外部脚本，将外部脚本的内容合并到当前脚本。
#一种
. filename    #简单起见，一般使用点号(.)，但是注意点号(.)和文件名中间有一空格
#二种
source filename

#注意：被包含脚本不需要有执行权限。

#在相同目录创建url.sh，内容为
 a='thi s inlcude strinf'

#在创建test.sh
. ./url.sh
# 或者使用以下包含文件代码
# source ./url.sh

echo "url：$url"

#$ chmod +x test.sh
#$ ./test.sh
