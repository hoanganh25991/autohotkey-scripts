;---------------------------------------------------------------------
;Ctrl+V	paste into command-line
#IfWinActive ahk_class ConsoleWindowClass
^V::SendInput {Raw}%clipboard%
return
#IfWinActive
