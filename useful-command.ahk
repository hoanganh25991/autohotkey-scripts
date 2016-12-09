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

::home address::110A Quoc Huong street, Thao Dien ward, district 2, Ho Chi Minh city

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

;::ssh bea bone::ssh -p 1028 debian@tinker.hopto.org
::ssh bea bone::ssh -p 1028 bea@tinker.hopto.org
::ssh bea::ssh -p 1028 bea@tinker.hopto.org
::ssh home bea::ssh bea@192.168.1.78

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

::pi vnc::tinker.hopto.org:1033

::ssh tinker::ssh root@tinker.press

;::ascii emoticon::http://upli.st/l/list-of-all-ascii-emoticons
;::ascii emo::http://upli.st/l/list-of-all-ascii-emoticons

::write speed::sync; time dd if=/dev/zero of=~/test.tmp bs=500K count=1024; time sync
::read speed::dd if=~/test.tmp of=/dev/null bs=500K count=1024

::known host::C:\Users\hoanganh25991\.ssh\
::know host::C:\Users\hoanganh25991\.ssh\
::authorized key::C:\Users\hoanganh25991\.ssh

::test disk speed::sudo dd if=/dev/zero of=/tmp/output bs=8k count=10k; sudo rm -f /tmp/output
::disk speed::sudo dd if=/dev/zero of=/tmp/output bs=8k count=10k; sudo rm -f /tmp/output
::disk sync speed::sudo dd if=/dev/zero of=/tmp/output bs=512 count=1000 oflag=dsync; sudo rm -f /tmp/output
::disk usage::df --total -h | grep total

::ping room::nmap -sn 192.168.1.0-255

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
;::got it::
	myvar := "ᕕ( ᐛ )ᕗ"
	myANSI := ConvertUtf8(myvar)
	Send myANSI
::move move::ᕕ( ᐛ )ᕗ
::kame yooooko::( ﾟ∀ﾟ)ｱﾊﾊ八八ﾉヽﾉヽﾉヽﾉ ＼ / ＼/ ＼
::heroku one instance::heroku ps:scale web=1
::format dir::node D:\work-station\node-scripts\format-file-name-in-dir\index.js
::fuckkkk::t(-__-t)
::sandbox::cd /d D:\storage & D:\storage\locker.bat & reset
::parse blade::node D:\work-station\node-scripts\parse-blade\index.js
::node increase memory size::node --max-old-space-size=1024
::node memmory::node --max-old-space-size=1024
::node increase mem size::node --max-old-space-size=1024
::node max memory::node --max-old-space-size=1024
::node max mem::node --max-old-space-size=1024
;::live serve::live-server --port=3000 --host=localhost --browser=chrome --wait=1000
::live serve::live-server --host=localhost --wait=1000 --port=3000
::favicon tag::<link rel="icon" href="data:;base64,iVBORwOKGO=" />
::update d dns::php D:\work-station\digital-ocean-dynamic-dns-updater\updater.php 1f74dc9d52266c58c4726c43b1ddcebef199794e66b4d8d838cf852e93dec3c7 tinker.press auto-home
::npm default::php D:\work-station\php-scripts\default-package.php & php D:\work-station\php-scripts\make-gitignore.php
::calc::node D:\work-station\node-scripts\calculator\index.js
::get bootstrap css::<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-alpha/css/bootstrap.min.css" />
::get boostrap js::<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-alpha/js/bootstrap.min.js"></script>
::lorem single::Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
::lorem short::Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
::switch to root::sudo su -
::switch root::sudo su -
::sd mode::-sds6ulabmaffah
;::php shell::php D:\program\php-5.6.22-win32-vc11-x64\shell.php
::php shell::psysh
;::composer install::composer require
::play sound::omxplayer
::public localhost::ngrok http <port>
::get favicon::https://www.google.com/s2/favicons?domain=
::askq::[???]
::web app shortcut::"C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" --profile-directory=Default --app-id=
::open editor::code .
;code . //means open current folder in vscode
\::Send, {BS}