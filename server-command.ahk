;when type 'cat' append to 'more', bcs more auto return
::cat::more

;when type 'chown www-data' append to 'chown -R www-data:www-data *'
::chown www-data::chown -R www-data:www-data *

::ubuntu version::lsb_release -a

::auto deploy::https://tinker.press/github-webhook.php

::getip::ip route get 1 | awk '{{}print $NF;exit{}}'
::get ip::ip route get 1 | awk '{{}print $NF;exit{}}'
;::public ip::wget http://ipinfo.io/ip -qO -
::get public ip::wget http://ipinfo.io/ip -qO -
::get time::date '{+}%A %Y-%m-%d %XN'
::change to user::su -
::switch user::su -
::sudo apt-get install::sudo apt-get install -y
::cpu usage::mpstat | gawk '$12~/[0-9.]{+}/{{}if($12>0){{}i=100-$12{}}if($13>0){{}i=100-$13{}}print"cpu-usage: \033[01;32m"i"%\033[0m"{}}'
::view process::ps aux | grep
::kill process::kill -9
;::kill::kill -9
::stop process::kill -9

::delete user::sudo userdel
::add user::sudo useradd

::sftp tinker::sftp root@tinker.press