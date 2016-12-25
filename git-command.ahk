;-----------------------------------
;reset last commit
::git rollback::git reset --soft HEAD~1
;::git commit -m::git add -A & git commit -m
;to work well with linux (arm like raspbery pi, beagle), delay for a sec
;::git commit -m::git add -A & git commit -m
::git commit linux -m::git add -A & sleep 5 & git commit -m
::git branch remove::git branch -d
::git config --global push origin master::git config --global push.default simple
;::git push::git push origin master
;::git pull::git pull origin master
::git log::git log --oneline --notes
::git remote delete::git push origin --delete
::git clone single branch::git clone --single-branch -b
::git clone branch::git clone -b
::git undo add::git reset
::git revert add::git reset
::git merge stragery::node -e "console.log('@hotfix: git merge -s ours <master> \n@hotfix: git checkout master \n@master: git merge <hotfix>');"
::git unmodify::git checkout -- <file>
::git clear::git checkout -- <file>