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