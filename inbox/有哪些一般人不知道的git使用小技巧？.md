# 有哪些一般人不知道的git使用小技巧？
来源：[(2 封私信) 首页 - 知乎](https://www.zhihu.com/)

## 摘录内容

[有哪些一般人不知道的 git 使用小技巧？](//www.zhihu.com/question/442074167/answer/2429668287)

* * *

[![](https://pic4.zhimg.com/50/v2-a7bfc5a23fa3d809363fe0f33e6cbd40_s.jpg)
](//www.zhihu.com/org/shen-zhou-shu-ma-qi-ye-ye-wu-ji-tuan)

[神州数码企业服务集团](//www.zhihu.com/org/shen-zhou-shu-ma-qi-ye-ye-wu-ji-tuan)

[​](https://www.zhihu.com/question/48510028)

已认证帐号

61 人赞同了该回答

**_小技巧一： .[gitkeep](https://www.zhihu.com/search?q=gitkeep&search_source=Entity&hybrid_search_source=Entity&hybrid_search_extra=%7B%22sourceType%22%3A%22answer%22%2C%22sourceId%22%3A2429668287%7D)_**

你可能非常熟悉 .[gitignore](https://www.zhihu.com/search?q=gitignore&search_source=Entity&hybrid_search_source=Entity&hybrid_search_extra=%7B%22sourceType%22%3A%22answer%22%2C%22sourceId%22%3A2429668287%7D)，但可能并不了解 .gitkeep。

默认情况下，Git 并不跟踪空目录，也就是说目录中必须存在一个文件。然而使用 .gitkeep，我们就可以将空目录添加到 git repo 中。

**_小技巧二：git cherry-pick_**

选择某一个分支的更改，随后将更改应用到当前分支。

这通常发生**在分支合并之前**。

```text
$ git checkout $my_branch
$ git cherry-pick $git_revision
```

在下图中，我们使用 git cherry-pick，选择分支 2 中的 C 、D、E 更改 ，将其应用到分支 1 中。

![](https://pic2.zhimg.com/50/v2-7d431e799cfd463ecccb756a867c055e_720w.jpg?source=1940ef5c)

**_小技巧三：如何为一个本地 git repo 设置两个远程 repo URL_**

有时我们经常需要在测试之前 push 代码，但又不想让每个人进行多次小的 push 操作，或者收到太多的推送通知，那该怎么做呢？

我们可以为一个本地 git 存储库设置两个远程存储库。事先将代码推送到一个远程仓库， 测试完成后，再推送到本地的存储库。

```text
$ git clone git @github.com:devops/denny-repo.git


$ git config remote.myremote.url git @bitbucket.org:devops/denny-repo.git
$ git config remote.origin.url git @github.com:devops/denny-repo.git
​​​
$ cat.git/config


$ git push origin master # origin points to github
$ git push bitbucket master # myremote points to bitbucket
```

**_小技巧四：git stash_**

git stash 可以让我们在没有 git commit 或 git push 的情况下存储本地更改，切换到另一个分支，然后再回来。

```text
# 搁置和恢复不完整的更改


# 临时存储所有修改过的跟踪文件
$ git stash


# 恢复最近存储的文件
$ git stash pop


# 列出所有隐藏的变更集
$ git stash list


# 丢弃最近隐藏的变更集
$ git stash drop
```

**_小技巧五：git rebase_**

使用 git rebase 可以在另一个基本提示之上重新 commit。如果不关心 git 提交历史，则可以跳过 “git rebase”，但是如果想要一个干净的历史，没有不必要的合并提交，则应该在集成来自其他分支的更改时使用 git rebase 而不是使用 git merge。

**_小技巧六：git squash_**

我们可能有多个本地 git 提交，现在运行 “git push”，它会生成好几个 git 提交历史。使用 git squash，我们就可以将它们合并为一个。

```text
# 获取本地 3 个最新提交
$ git rebase -i HEAD~3
​​​
# 在编辑器中，将“pick”更改为“squash”。将第一个保留为“pick”
​​​
$ git rebase 
$ git push origin $branch_name
```

**_小技巧七：什么是 git revert？_**

我们可以将 Git 形象地比喻为一个时间线管理实用程序，一次提交则相当于一个[时间点](https://www.zhihu.com/search?q=%E6%97%B6%E9%97%B4%E7%82%B9&search_source=Entity&hybrid_search_source=Entity&hybrid_search_extra=%7B%22sourceType%22%3A%22answer%22%2C%22sourceId%22%3A2429668287%7D)的快照。此外，我们可以通过使用分支来管理多个时间线。

在 Git 中 “撤消” 时，我们通常会回到过去，或者回到另一个没有发生错误的时间线。

-   **_\[撤消本地更改] 尚未推送更改时_**

如果想完全放弃本地更改，我们可以使用 git checkout。当 repo 很小时，我甚至可以运行 “git clone”，然后运行 ​​git checkout。

```text
$ git checkout $branch_name
```

-   **_\[撤消公共更改] 尚未推送更改时_**

```text
$ git log -n  5
$ git revert $git_revision
$ git push origin $branch_name
```

-   **_如何撤消 git pull？_**

| 命令 | 范围 | 常见用例 |
| git 重置 | 提交级别 | 丢弃未提交的更改 |
| git 重置 | 文件级 | 取消暂存文件 |
| git 结帐 | 提交级别 | 在分支之间切换或检查旧快照 |
| git 结帐 | 文件级 | 放弃工作目录中的更改 |
| git 还原 | 提交级别 | 撤消公共分支中的提交 |
| git 还原 | 文件级 | （不适用） |

**_小技巧八：git reflog_**

Git 维护着一个检查点列表，可以使用 [reflog](https://www.zhihu.com/search?q=reflog&search_source=Entity&hybrid_search_source=Entity&hybrid_search_extra=%7B%22sourceType%22%3A%22answer%22%2C%22sourceId%22%3A2429668287%7D) 访问这些检查点。

使用 reflog 我们就可以撤消合并、恢复丢失的提交或分支等等。

**_常用 Git 命令列表：_**

| 命令内容 | 命令 |
| 显示最新历史记录，每行一行 | git log -n 10 –oneline |
| 按模式检查 git 日志 | git log –grep=”$pattern” |
| 按文件检查 git 日志 | git log — foo.py bar.py |
| 更改最后的提交消息 | git commit –amend |
| 检查当前仓库的 git 配置 | git config –list |
| 删除本地分支 | git 分支 -D $branch |
| 删除远程分支 | git push origin –delete $branch |
| 删除本地标签 | git tag -d $tag |
| 删除远程标签 | git push –delete origin $tag |

## 想法
