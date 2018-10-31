;---------------------------------------------------
;Ctrl+Shift+C to open Google-Search on selected text

^+s::
{
Send, ^c
Sleep 50
Run, http://www.google.com/search?q=%clipboard%
Return
}