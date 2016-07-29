;---------------------------------------------------------------

;Ctrl+Shift+X open terminal from current-directory

#IfWinActive ahk_class CabinetWClass ; for use in explorer.

^+x::
ClipSaved := ClipboardAll

Send !d

Sleep 10

Send cmd{Enter}
return

#IfWinActive