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

