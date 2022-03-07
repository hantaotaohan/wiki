- ## 简介
	- git **是一**个版本控制系统，**通过使用 git 可以**控制你之前的任何历史版本
- ## 概念
	- 要理解 git 就必须要弄明白 git 版本库内的三颗树的概念。因为在你的工作流当中，添加并提交到版本库，或者回退版本都需要用到他们，首先来介绍一下这三棵树。
		- Working Directory 工作区
		  > 就是你创建储存库的文件夹，你在里面添加文件，修改文件，都是在工作区内进行的
		- Stage 暂存区
		  > 这个区域你可以把它理解为一个临时储存区域，所有更改或者新文件都可以把它们先放到暂存区，等待最终提交到储存库里.
		- Repository 储存库
		  > 这里是保存管理提交记录的最终区域，只要把文件提交到这个区域里，那么你就可以控制提交历史了.
	- 所以一般的工作流是这样的。
		- 在工作区内添加或者修改文件
		  > touch test.md
		- 将需要进行版本管理的文件放入暂存区
		  > git add test.md
		- 将暂存区的文件提交到储存库
		  > git commit ‘’<message>‘’
		- 因此被版本控制系统的文件将会有三种状态
			- Modified 已修改
			- Staged 已暂存
			- Committed 已提交
- ## 使用方法
	- 当你需要建立一个版本控制库的时候可以使用 [[git init]] 命令
	  ```bash
	  git init <directory>
	  # 或者进入到你希望建立版本控制库的文件夹内
	  cd <directory>
	  git init
	  ```
	- 建立完版本库之后呢，如果你在工作区添加或者修改了文件，那么就需要用到 [[git add]] 命令，这个命令是用来把未跟踪的文件添加到暂存区的，或者把已跟踪的文件提交到暂存区.
	  ```bash
	  # 把当前路径下的所有文件或者文件夹全部添加到暂存区.
	  git add . 
	  # 把版本控制库内的所有未跟踪和已经做出修改的文件或文件夹添加到暂存区
	  git add --all
	  # 或者简写
	  git add -A
	  ```
	- 当你完成了所有的修改并把它们全都放进暂存区后，就可以把它们提交到版本库里面去了，以方便版本回滚.这时候需要用 [[git commit]] 命令.
	  ```bash
	  # 在命令行内直接提交
	  git commit -m “<message>”
	  # 或者用你最喜欢的文本编辑器
	  git commit
	  ```
	- 如果你是使用类似Github这种远程仓库的话，你还可以吧版本库推送到Github上面去 那么这个时候就需要使用 [[git push]] 命令
	  ```bash
	  # 使用 git push 的前提是必须先连接到远端仓库
	  git remote add <origin> <url>
	  # 成功后就可以使用 git push了
	  # 如果oush后面不到任何参数，那么只是推送本地版本库的当前分支到远端仓库
	  git push
	  
	  ```
	- 当你在工作区内更改了文件，但是想要恢复到提交到版本库的最新的一次版本,那么就可以使用 [[git reset]] 命令
	  ```bash
	  git reset --hard
	  ```
	- 如果你想临时查看某一次提交的所有文件，那么你可以执行 [[git checkout]] <comment id> 命令，这样会临时生成一个已 comment id 为名称的分支，如果要恢复之前的状态可以使用 [[git checkout]] <branch name>
	  ```bash
	  # 使用 git log 命令查看提交历史
	  git log
	  # 选择某一条提交记录，并使用git checkout 命令将该条记录的状态存# 放到当前工作区，并建立一个临时的分支
	  git checkout <commit id>
	  # 如果不满意想撤销，可与使用如下命令
	   git chenkout <branch name> 
	  ```
	- 如果你仅仅想恢复某一次提交的其中某一个文件或者文件夹也可以使用 [[git checkout]] 命令
	  ```bash
	  git checkout [<commit id>] [--] <paths> or <files>
	  ```
	  > 如果不填写 commit id 那么默认情况下会从暂存区检出该文件，如果暂存区也是空的，那么默认从最新的提交记录中检出该文件.
	- 当然在开发过程中，新建一个分支也是一个相当不错的选择，同样也需要使用 [[git checkout]] 命令
	  ```bash
	  # 新建分支的方法
	  git branch <branch name>
	  # 新建分支并且直接切换到该分支
	  git checkout -b <new branch>
	  # 切换到分支
	  git checkout <branch name>
	  # 删除本地分支
	  git branch -d <local branch>
	  # 删除远程分支
	  git push origin -d <remote branch name>
	  ```