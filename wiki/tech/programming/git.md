---
layout: default
category: Git
slug: finding-and-removing-big-files-from-git-history
title: "Finding and removing big files from history"
---

## Finding Big Files

### Method 1

**Note for Windows Users**: Codes below may not run in Windows or give some syntax errors. [Official Windows Git Client](https://git-scm.com/download/gui/windows) includes a command shell emulator called **Git Bash** which is almost like unix and can run all the commands below.

```sh
git rev-list --objects --all \
| git cat-file --batch-check='%(objecttype) %(objectname) %(objectsize) %(rest)' \
| sed -n 's/^blob //p' \
| sort --numeric-sort --key=2 \
| cut -c 1-12,41- \
| numfmt --field=2 --to=iec-i --suffix=B --padding=7 --round=nearest
```

Source: <https://stackoverflow.com/questions/10622179/how-to-find-identify-large-files-commits-in-git-history/20609719#20609719>

### Method 2

Download and use [Git Extensions](https://sourceforge.net/projects/gitextensions/). It has a plugin called "Find Large Files"


***

## Repository Size

You can check the size of your repository with the following git command:

```sh
git count-objects -vH
```

***

## Part 2: Removing Files and Folders From Git History

If you have decided which folders to remove, you can use one of the methods below to remove the files or folders from your git history.

### Method 1: Removing With `git filter-branch`

* This method uses `git filter-branch` command that comes together with `git`.

**Note for Windows Users**: Codes below may not run in Windows or give some syntax errors. [Official Windows Git Client](https://git-scm.com/download/gui/windows) includes a command shell emulator called **Git Bash** which is almost like unix and can run all the commands below.

**Note for big projects**: Since this method parses every commit one-by-one, it takes a lot of time for big projects. For example, it takes almost an hour to rewrite history in a project with ~ 5000 commits. If your project has lots of commits, then follow method 2.

Step 1: Remove files

```sh
git filter-branch --force --index-filter \
'git rm --cached --ignore-unmatch YOUR_FILE_NAME_AND_PATH' \
--prune-empty --tag-name-filter cat -- --all
```

Step 2: Clean db

```sh
git for-each-ref --format='delete %(refname)' refs/original | git update-ref --stdin
git reflog expire --expire=now --all
git gc --prune=now
```

Step 3: Push changes:

```sh
git push origin --force --all
git push origin --force --tags
```

Source: <https://help.github.com/articles/removing-sensitive-data-from-a-repository/#using-filter-branch>

### Method 2: Using BFG

There's a package called [BFG Repo-Cleaner](https://rtyley.github.io/bfg-repo-cleaner/) which is officialy recomended by GitHub.

This project requires Java Runtime to be installed in your machine.

```sh
wget http://repo1.maven.org/maven2/com/madgag/bfg/1.13.0/bfg-1.13.0.jar bfg.jar
git clone --mirror https://your.gitserver.com/your-repository.git repo.git
cd repo.git
java -jar bfg.jar --delete-folders MY_FOLDER_NAME
java -jar bfg.jar --delete-files MY_FILE_NAME
git reflog expire --expire=now --all && git gc --prune=now --aggressive
git push --mirror https://project/new-repository
```