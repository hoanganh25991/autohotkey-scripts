;-----------------------------------
;when type 'git log' append to 'git log --oneline'
::git log::git log --oneline
;when type 'cat' append to 'more', bcs more auto return
::cat::more
;when type 'chown www-data' append to 'chown -R www-data:www-data *'
::chown www-data::chown -R www-data:www-data *
::sendto::%appdata%/microsoft/windows/sendto
::hotkey::%programfiles%\AutoHotkey\scripts
::ubuntu version::lsb_release -a
;-----------------------------------
;when type "roottinker" append to "root@128.199.237.219"
;::root@tinker.press::root@128.199.109.195
;::tinker.press::128.199.109.195