;-----------------------------------
;reset last commit
::git rollback::git reset --soft HEAD~1
::git commit -m::git add -A & git commit -m
::git branch remove::git branch -d
::git config --global push origin master::git config --global push.default simple
::git push::git push origin master
::git pull::git pull origin master
::git log::git log --oneline
::git remote delete::git push origin --delete
::git clone single branch::git clone --single-branch -b