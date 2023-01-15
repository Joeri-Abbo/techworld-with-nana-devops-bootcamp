## 3 - Version Control with Git

### Commands

* git clone (create local copy of remote repo)
* git add
* git commit
* git log
* git push
* git pull
* git init
* git remote add origin <remote_repo>
* git push - -set-upstream origin master (create local git repo and connect to remote repo)
* git checkout <branch>
* git checkout -b <branch>(create new branch locally)
* git branch
* git status
* git branch -d <branch>
* git rebase(avoid unnecessary merge commits in git history)
* git rm -r - -cached <folder>
* git rm - -cached <file>(remove file from remote repo)
* git stash
* git stash pop(save unfinished changes)
* git reset - -hard HEAD~1(revert & discard changes to commit, ~<number commits to revert>)
* git reset HEAD~1(revert & keep changes)
* git commit - -amend(merge changes into last commit)
* git reset - -hard HEAD~1
* git push - -force
* git revert <commit_hash>(creates new commit to revert old commit changes)
* git merge

### Remove Git

remove local .git file (contains config for git remotes etc)
rm -fr .git

### best practices

1 branch per feature
dev branch: intermediary master branch
pull/merge requests
delete branch when merged
add .gitignore file