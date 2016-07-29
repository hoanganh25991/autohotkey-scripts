;-----------------------------------
;reset last commit
::git rollback::git reset --soft HEAD~1
::git add commit -m::git add -A & git commit -m
::git branch remove::git branch -d
::git config --global push origin master::git config --global push.default simple
::git push origin::git push origin master