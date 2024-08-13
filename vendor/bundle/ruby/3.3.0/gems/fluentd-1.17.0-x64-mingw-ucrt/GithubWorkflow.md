# Github workflow for contributing to fluentd

Table of Contents

* [Fork a repository](#fork-a-repository)
* [Clone fork repository to local](#clone-fork-repository-to-local)
* [Create a branch to add a new feature or fix issues](#create-a-branch-to-add-a-new-feature-or-fix-issues)
* [Commit and Push](#commit-and-push)
* [Create a Pull Request](#create-a-pull-request)


The [fluentd](https://github.com/fluent/fluentd.git) code is hosted on Github (https://github.com/fluent/fluentd). The repository is called `upstream`. Contributors will develop and commit their changes in a clone of upstream repository. Then contributors push their change to their forked repository (`origin`) and create a Pull Request (PR), the PR will be merged to `upstream` repository if it meets the all the necessary requirements.		

## Fork a repository

 Go to https://github.com/fluent/fluentd then hit the `Fork` button to fork your own copy of repository **fluentd** to your github account.

## Clone the forked repository to local

Clone the forked repo in [above step](#fork-a-repository) to your local working directory:
```sh
$ git clone https://github.com/$your_github_account/fluentd.git   
```

Keep your fork in sync with the main repo, add an `upstream` remote:
```sh
$ cd fluentd
$ git remote add upstream https://github.com/fluentd/fluentd.git
$ git remote -v

origin  https://github.com/$your_github_account/fluentd.git (fetch)
origin  https://github.com/$your_github_account/fluentd.git (push)
upstream        https://github.com/fluentd/fluentd.git (fetch)
upstream        https://github.com/fluentd/fluentd.git (push)
```

Sync your local `master` branch:
```sh
$ git checkout master
$ git pull origin master
$ git fetch upstream
$ git rebase upstream/master
```

## Create a branch to add a new feature or fix issues

Before making any change, create a new branch:
```sh
$ git checkout master
$ git pull upstream master
$ git checkout -b new-feature
```

## Commit and Push

Make any change on the branch `new-feature`  then build and test your codes.  
Include in what will be committed:
```sh
$ git add <file>
```

Commit your changes with `sign-offs`
```sh
$ git commit -s
```

Enter your commit message to describe the changes. See the tips for a good commit message at [here](https://chris.beams.io/posts/git-commit/).  
Likely you go back and edit/build/test some more then `git commit --amend`  

Push your branch `new-feature` to your forked repository:
```sh
$ git push -u origin new-feature
```

## Create a Pull Request

* Go to your fork at https://github.com/$your_github_account/fluentd
* Create a Pull Request from the branch you recently pushed by hitting the button `Compare & pull request` next to branch name.
