# Git 使用指南

## 基础篇

### Git Commit

- `git commit -m <message>` 保存工作区所有文件的快照, 在以后的工作中可以快速的在快照之间切换
- `git commit -a` 保存工作去已经跟踪过的项目, 如果有更改则把所有的更改保存
- `git commit -am` 这条命令是把 `-a` `-m` 合并了
- `git commit -amend` 自动打开编辑器, 追加后面的提交记录, 并且覆盖上一次的提交记录

### Git Branch

- *早建分支, 早用分支*
- `git branch <branch_name>` 新建分支命令
- `git switch <branch_name>` 切换分支命令, 也可以使用旧命令 `git checkout <branch_name>`
- `git switch -c <branch_name>` 新建分支并且直接切换到该分支

### Git Merge

- `git merge other_branch` 合并其他分支, 但是会产生合并记录

### Git Rebase

- *rebase 的作用区别于 merge, 最终会产生线性历史 *
- `git rebase <other_branch>` 合并 (变基) 其他分支, 产生线性合并记录

## 高级篇

### 分离 HEAD

- *使用 `git checkout <commit_id>` 来指向某个分支的快照*
- `git checkout <commit_id>` 指向某一个快照, 且覆盖工作树
- `git switch -` 切换 `checkout <commit_id>` 之前的状态
- `git switch <branch_name>` 恢复分离 HEAD 的状态

### 相对引用

- 使用 `^` 向上移动 1 个提交记录
- 使用 `~<NUM>` 向上移动多个提交记录, 如 `~3`
- `git branch -f branch_name HEAD~<NUM>` 强制移动分支
- `git checkout HEAD ~<NUM>` 移动 HEAD

### 撤销变更

- `git reset --hard` 默认恢复上一次的提交, 但是在 `git log` 中是看不到恢复之前的记录了
- `git revert`
