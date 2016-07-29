;---------------------------------------------------------------------
;Ctrl+W	close current command-line
#IfWinActive ahk_class ConsoleWindowClass
^W::Process, Close, cmd.exe
return
#IfWinActive


