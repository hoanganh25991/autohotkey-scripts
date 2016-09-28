;FileEncoding, UTF-8
;FileEncoding, UTF-16
;default means ANSI
;FileEncoding

::sendto::%appdata%/microsoft/windows/sendto

::hotkey::%programfiles%\AutoHotkey\scripts

;dc index transform
::dc index transform::php %PHP_SCRIPTS%\dc-js-index-transform.php

::fishco config transform:: php %PHP_SCRIPTS%\fishco-config-transform.php

::aia game copy file::php %PHP_SCRIPTS%\aia-game-v7.php

::php script::%PHP_SCRIPTS%

::snippet::php %PHP_SCRIPTS%\snippet-hardlink.php

::home address::110A Quoc Huong street, Thao Dien ward, District 2, Ho Chi Minh City

;when type 'time' append to '&tbs=cdr%3A1%2Ccd_min%3A2014%2Ccd_max%3Anow'
::timee::&tbs=cdr%3A1%2Ccd_min%3A2013%2Ccd_max%3Anow
::at time range::&tbs=cdr%3A1%2Ccd_min%3A2013%2Ccd_max%3Anow

;---------------------------------------------------------------------
;Ctrl+W	close current command-line
#IfWinActive ahk_class ConsoleWindowClass
^W::Process, Close, cmd.exe
return
#IfWinActive

;---------------------------------------------------------------------
;Ctrl+V	paste into command-line
#IfWinActive ahk_class ConsoleWindowClass
^V::SendInput {Raw}%clipboard%
return
#IfWinActive

;---------------------------------------------------------------------
;Ctrl+L clear windows console as linux style
#IfWinActive ahk_class ConsoleWindowClass
^L::Send cls{Enter}
return
#IfWinActive

;get mac address in window
::get mac address::getmac
;::mac address::getmac

::ls::ls -la

::start menu::C:\ProgramData\Microsoft\Windows\Start Menu\Programs

::host file::C:\Windows\System32\drivers\etc\

::cygwin::C:\Users\hoanganh25991\cygwin

::default gitignore::php D:\work-station\php-scripts\make-gitignore.php
::make gitignore::php D:\work-station\php-scripts\make-gitignore.php
::generate gitignore::php D:\work-station\php-scripts\make-gitignore.php

;::ssh beagle bone::ssh -p 1028 debian@tinker.hopto.org
::ssh beagle bone::ssh -p 1028 beagle@tinker.hopto.org
::ssh beagle::ssh -p 1028 beagle@tinker.hopto.org
::ssh home beagle::ssh -p 1028 beagle@tinker.hopto.org

::ssh tinker.press::ssh root@tinker.press

::default package::php D:\work-station\php-scripts\default-package.php

::format filename::node D:\work-station\node-scripts\format-file-name\index.js

::format file name::node D:\work-station\node-scripts\format-file-name\index.js

;::parse markdown::php D:\work-station\php-scripts\parse-markdown.php

::node script::D:\work-station\node-scripts

::parse markdown::node D:\work-station\node-scripts\parse-markdown-github-style\index.js

::ssh home pie::ssh pi@192.168.1.9
::ssh home pi::ssh pi@192.168.1.9
::ssh pie::ssh pi@192.168.1.9
::ssh pi::ssh pi@192.168.1.9

::beagle bone server::tinker.hopto.org:1025
::beagle bone vnc::tinker.hopto.org:1029

::pi vnc::tinker.hopto.org:1033

::ssh tinker::ssh root@tinker.press

;::ascii emoticon::http://upli.st/l/list-of-all-ascii-emoticons
;::ascii emo::http://upli.st/l/list-of-all-ascii-emoticons

::write speed::sync; time dd if=/dev/zero of=~/test.tmp bs=500K count=1024; time sync
::read speed::dd if=~/test.tmp of=/dev/null bs=500K count=1024

::know host::subl C:\Users\hoanganh25991\.ssh\known_hosts
::authorized key::C:\Users\hoanganh25991\.ssh

::test disk speed::sudo dd if=/dev/zero of=/tmp/output bs=8k count=10k; sudo rm -f /tmp/output
::disk speed::sudo dd if=/dev/zero of=/tmp/output bs=8k count=10k; sudo rm -f /tmp/output
::disk sync speed::sudo dd if=/dev/zero of=/tmp/output bs=512 count=1000 oflag=dsync; sudo rm -f /tmp/output
::disk usage::df --total -h | grep total

::ping room::nmap -sn 192.168.1.0/24

ConvertUtf8(ByRef string)

{

    VarSetCapacity( newstring, StrPut(string, "CP0"))

    StrPut(string, &newstring, "CP0")

    Return string := StrGet(&newstring,"CP0")

}

;myvar := "Det stÃ¥r klart att nÃ¥gon har tjallat om gÃ¶mstÃ¤llet."

;myANSI := ConvertUtf8(myvar)
;ᕕ( ᐛ )ᕗ
;¿ⓧ_ⓧﮌ
::got it::
	myvar := "ᕕ( ᐛ )ᕗ"
	myANSI := ConvertUtf8(myvar)
	Send myANSI
::move move::ᕕ( ᐛ )ᕗ
::kame yooooko::( ﾟ∀ﾟ)ｱﾊﾊ八八ﾉヽﾉヽﾉヽﾉ ＼ / ＼/ ＼
::heroku one instance::heroku ps:scale web=1
::format dir::node D:\work-station\node-scripts\format-file-name-in-dir\index.js
::fuckkkk::t(-__-t)