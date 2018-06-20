;FileEncoding, UTF-8
;FileEncoding, UTF-16
;default means ANSI
;FileEncoding

::sendto::%appdata%/microsoft/windows/sendto

::hotkey::C:\work-station\autohotkey-scripts
::hot key::C:\work-station\autohotkey-scripts

;dc index transform
::dc index transform::php %PHP_SCRIPTS%/dc-js-index-transform.php

::fishco config transform:: php %PHP_SCRIPTS%/fishco-config-transform.php

::aia game copy file::php %PHP_SCRIPTS%/aia-game-v7.php

::php script::%PHP_SCRIPTS%

::snippet::php %PHP_SCRIPTS%/snippet-hardlink.php

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
;^L::Send cls{Enter}
;^L::SendInput clear{Enter}
return
#IfWinActive

;get mac address in window
::get mac address::getmac
;::mac address::getmac

::ls::ls -lah

::start menu::C:/ProgramData/Microsoft/Windows/Start Menu/Programs

::host file::subl C:/Windows/System32/drivers/etc/hosts
::edit host::C:/Windows/System32/drivers/etc/

::cygwin::C:/Users/admin/cygwin

::default gitignore::php C:/work-station/php-scripts/make-gitignore.php
::make gitignore::php C:/work-station/php-scripts/make-gitignore.php
::generate gitignore::php C:/work-station/php-scripts/make-gitignore.php

::ssh bea::ssh bea@192.168.0.78

::default package::php C:/work-station/php-scripts/default-package.php

::format filename::node C:/work-station/node-scripts/format-file-name/index.js

::format file name::node C:/work-station/node-scripts/format-file-name/index.js

;::parse markdown::php C:/work-station/php-scripts/parse-markdown.php

::node script::C:/work-station/node-scripts

::parse markdown::node C:/work-station/node-scripts/parse-markdown-github-style/index.js

::ssh pie::ssh pi@192.168.0.9

::pi vnc::tinker.hopto.org:1033

;::ssh tinker::ssh root@tinker.press
;::ssh tinker::ssh root@128.199.109.195

;::ascii emoticon::http://upli.st/l/list-of-all-ascii-emoticons
;::ascii emo::http://upli.st/l/list-of-all-ascii-emoticons

::write speed::sync; time dd if=/dev/zero of=~/test.tmp bs=500K count=1024; time sync
::read speed::dd if=~/test.tmp of=/dev/null bs=500K count=1024

;::authorized key::C:/Users/admin/.ssh
::public key::subl C:/Users/admin/.ssh/id_rsa.pub
;::.ssh::C:/Users/admin/.ssh
;::ssh::C:/Users/admin/.ssh

::test disk speed::sudo dd if=/dev/zero of=/tmp/output bs=8k count=10k; sudo rm -f /tmp/output
::disk speed::sudo dd if=/dev/zero of=/tmp/output bs=8k count=10k; sudo rm -f /tmp/output
::disk sync speed::sudo dd if=/dev/zero of=/tmp/output bs=512 count=1000 oflag=dsync; sudo rm -f /tmp/output
::disk usage::df --total -h | grep -E '(Filesystem|total)'

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
::format dir::node C:/work-station/node-scripts/format-file-name-in-dir/index.js
::fuckkkk::t(-__-t)
::sandbox::cd /d D:/storage & D:/storage/locker.bat & clear
::parse blade::node C:/work-station/node-scripts/parse-blade/index.js
::node increase memory size::node --max-old-space-size=1024
::node memmory::node --max-old-space-size=1024
::node increase mem size::node --max-old-space-size=1024
::node max memory::node --max-old-space-size=1024
::node max mem::node --max-old-space-size=1024
;::live serve::live-server --port=3000 --host=localhost --browser=chrome --wait=1000
::live serve::live-server --host=localhost --wait=1000 --port=3000
::favicon tag::<link rel="icon" href="data:;base64,iVBORwOKGO=" />
::update d dns::php C:/work-station/digital-ocean-dynamic-dns-updater/updater.php 1f74dc9d52266c58c4726c43b1ddcebef199794e66b4d8d838cf852e93dec3c7 tinker.press auto-home
::npm default::php C:/work-station/php-scripts/default-package.php & php C:/work-station/php-scripts/make-gitignore.php
::calc::node C:/work-station/node-scripts/calculator/index.js
::get bootstrap css::<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-alpha/css/bootstrap.min.css" />
::get boostrap js::<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-alpha/js/bootstrap.min.js"></script>
::lorem single::Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
::lorem short::Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
::switch to root::sudo su -
::switch root::sudo su -
::sd mode::-sds6ulabmaffah
;::php shell::php D:/program/php-5.6.22-win32-vc11-x64/shell.php
::php shell::psysh
;::composer install::composer require
;::play sound::omxplayer
::public localhost::ngrok http <port>
::get favicon::https://www.google.com/s2/favicons?domain=
::askq::[???]
::web app shortcut::"C:/Program Files (x86)/Google/Chrome/Application/chrome.exe" --profile-directory=Default --app-id=
::open editor::code .
;code . //means open current folder in vscode
;backspace
;\::Send, {BS}
::internal ip::ifconfig eth0 | grep inet | awk '{{} print $2 {}}'
::ssh smu confession::ssh root@smuconfess.originally.us
::memory usage::free -m | grep -E '(total|used|free|Mem|Swap)'
::install cpuusage::sudo apt-get install -y sysstat gawk
::truncate known host::truncate --size=0 C:/Users/admin/.ssh/known_hosts
::apt-get install::apt-get install --yes
::add virtual host::subl C:/xampp/apache/conf/extra/httpd-vhosts.conf
;::service apache2 restart::httpd -k restart
::yahoo::(ﾉ^∇^)ﾉﾟ
::yahoo::Send {(ﾉ{^}∇^)ﾉﾟ}
::enable service::systemctl enable <name>.service
::random pass::node C:\work-station\node-scripts\random-pass\index.js
::arteastiq pass::L5htMG7qNJss454v
::github embed youtube::[![video thumbnail](https://i.ytimg.com/vi/woq-z6a0Q_Y/2.jpg?time=1485757017422)](https://youtu.be/woq-z6a0Q_Y)
::known host::C:\Users\admin\.ssh
::la la la::＼＿ヘ(ᐖ◞)､
::init console image::{!}function(a){{}let b=function(a,b){{}return{{}string:"{+}",style:"font-size: 1px; padding: "{+}Math.floor(b/2){+}"px "{+}Math.floor(a/2){+}"px; line-height: "{+}b{+}"px;"{}}{}},c=function(c,d){{}d=d||1;let e=new Image;e.onload=function(){{}let e=b(this.width*d,this.height*d);a.log("%c"{+}e.string,e.style{+}"background: url("{+}c{+}"); background-size: "{+}this.width*d{+}"px "{+}this.height*d{+}"px; color: transparent;"){}},e.src=c{}};a.image=c{}}(console);
::smile::(ﾟヮﾟ)
::create custom element::subl C:\work-station\snippets\custom-element.html
::docker terminal::sh "C:\Program Files\Docker Toolbox\start.sh"
::ssh reservation::ssh root@alfred.hoipos.com
::ssh hoipos::ssh root@pos.hoicard.com
::set mysql pass::mysqladmin -u root password NEWPASSWORD
::change mysql pass::mysqladmin -u root -p'oldpassword' password newpass
::demo bash file::C:\work-station\demo.sh
::gitzip::access_token=4a7056919a0a71202a544332e65cc82898b417c5&scope=repo&token_type=bearer
::start mysql::mysqld --datadir="C:\ProgramData\MySQL\MySQL Server 5.7\Data"
::create reducer::subl "C:\work-station\simple-reducer.js"
::top memory::ps aux --sort=-%mem | awk 'NR<=10{{}print $0{}}'
::path work station::path:C:\work-station
::workstation path::path:C:\work-station
::no inspector:://noinspection JSUnresolvedFunction
::warn background::FDD835
::nowlog::copy(moment().format('YYYY-MM-DD HH:mm:ss'))
::hoi hash::https://runkit.com/admin/5927e12ec2d9b00012778bb1
::fiddle::https://fiddle.jshell.net/
::flip table::(╯°□°）╯︵ ┻━┻﻿
::ssh vagrant::vagrant ssh
::start ubuntu 14::cd C:\work-station\vagrant-images\ubuntu-trusty64 && vagrant up && vagrant ssh
::start ubuntu 16::cd C:\work-station\vagrant-images\ubuntu-1604 && vagrant up && vagrant ssh
;::start ubuntu::cd C:\work-station\vagrant-images\ubuntu-xenial64 && vagrant up && vagrant ssh
::mklink junction::mklink /J <des> <src>
::make junction::mklink /J <des> <src>
::console facebook::developers.facebook.com
::generate doc::postmanerator -output=./doc.html -collection=collection.json
::cloud console::https://console.cloud.google.com/home/dashboard?project=glass-turbine-148103
::cloud function::https://console.cloud.google.com/functions/list?project=glass-turbine-148103
::firebase console::https://console.firebase.google.com/project/glass-turbine-148103/overview
::ssh ec2::ssh root@ec2.tinker.press
;::ssh do2::ssh root@do2.tinker.press
::prettier default::prettier --write --no-semi --print-width 120 *