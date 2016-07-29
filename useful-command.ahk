;-----------------------------------
;when type 'git log' append to 'git log --oneline'
::git log::git log --oneline
;when type 'cat' append to 'more', bcs more auto return
::cat::more
;when type 'chown www-data' append to 'chown -R www-data:www-data *'
::chown www-data::chown -R www-data:www-data *