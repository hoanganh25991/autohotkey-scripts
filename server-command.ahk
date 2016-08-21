;when type 'cat' append to 'more', bcs more auto return
::cat::more

;when type 'chown www-data' append to 'chown -R www-data:www-data *'
::chown www-data::chown -R www-data:www-data *

::ubuntu version::lsb_release -a

::auto deploy::https://tinker.press/github-webhook.php

;clear in linux: reset ^L, in window: cls
#IfWinActive ahk_class ConsoleWindowClass
^L::Send cls {Enter}
return
#IfWinActive