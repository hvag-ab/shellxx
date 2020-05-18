#!/bin/bash

BASE_DIR=/usr/local/nginx/sbin/
PID=/usr/local/nginx/logs/nginx.pid
#no1.判断是否root用户登录
if [ "$UID" -ne 0 ]
 then
  echo "请您使用root用户登录！！！"
 exit 1
fi
. /etc/init.d/functions
#判断用户输入的传参个数
if [ "$#" -ne 1 ]
  then
    echo "/bin/bash $0 {start|stop|restart}"
  exit 1
fi

#编写启动Nginx函数
function start (){
  if [ `netstat -anput | grep nginx | wc -l` -eq 0 ]
    then
     $BASE_DIR/nginx
  fi
    if [ "$?" -eq 0 ]
     then
      action "Nginx启动成功！" /bin/true
     else
      action "Nginx启动失败！" /bin/false
    fi
}

#编写停止Nginx函数
function stop (){
  if [ `netstat -anput | grep nginx | wc -l` -ne 0 ]
    then
     $BASE_DIR/nginx -s stop
  fi
    if [ "$?" -eq 0 ]
     then
      action "Nginx停止成功!" /bin/true
     else
      action "Nginx停止失败!" /bin/false
    fi
}

function restart (){
  if [ `netstat -anput | grep nginx | wc -l` -ne 0 ]
    then
     $BASE_DIR/nginx -s reload
  fi
    if [ "$?" -eq 0 ]
     then
      action "Nginx重启成功!" /bin/true
     else
      action "Nginx重启失败!" /bin/false
    fi
}

#编写case语句 使用特殊的位置变量$1来判断用户输入的内容
case $1 in
  start)
     start
  ;;
  stop)
     stop
  ;;
    restart)
#     stop
#     start
    restart
  ;;
esac
