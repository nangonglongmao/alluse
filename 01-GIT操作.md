# GIT操作

### 版本库管理历史

- 黑暗时期 =》 集中式版本控制 =》 分布式版本控制

  - 黑暗时期：论文定稿 ->论文定稿2 -> 论文定稿18.04.19 -> 论文最终版 -> 论文最最终版 -> 打死都不改版-> 
  - 集中式版本控制：最早的CVS，后起之秀SVN  
  - 分布式版本控制：BitKeeper、GIT
  - 2008年github正式运营，之后git迅速发展

### 安装配置

- 安装：`sudo apt-get install git`
- 测试：`git --version`，查看版本
- 配置：
  - 邮箱：`git config --global user.email "lijie@1000phone.com"`
  - 用户：`git config --global user.name "lijie"`
  - 提叫方式：`git config --global push.default simple|matching`
    - simple：只提交当前分支
    - matching：提交所有分支
  - --global：全局配置
  - --system：系统配置
  - 查看配置：

### 基本操作

- git init：初始化一个版本库
- git add：添加追踪文件，'.'可以一次性添加所有文件
- git commit：提交，每次提交都会记录下来，-m选项指定提交说明
  - 若无法提交，提示进行配置，请参考上面配置的步骤
  - 若已经追踪过的文件再次修改提交，可以简化操作：`git commit -a -m '提交日志'`
- git status：查看状态
- git log：查看提交日志
  - --oneline：一行显示日志信息

### 分支操作

- git branch：查看分支，前面带'*'表示当前分支
  - -r：查看远程分支
  - -a：查看所有分支
- git branch develop：创建新的develop分支
- git checkout develop：切换到develop分支
- git merge develop：将develop分支合并到当前分支(操作前需要先切换到目标分支)
- git branch -d develop：删除develop分支

### 合并冲突

- 原因：修改同一文件时容易产生合并冲突
- 解决：手动
  - 查看状态：git status，确定冲突文件
  - 打开文件，进行手动选择，调整合适的内容
    - 删除冲突格式：>>>>>>、=======、<<<<<<<
    - 合理调整和取舍内容
  - 重新添加：git add .
  - 再次提交：git commit

### 项目开发

- master：主分支，用来版本发布，更新的最慢
- develop：开发分支，保存正常开发的最新代码
- local：本地分支，表示本地的临时添加新功能使用的分支，需要基于develop，然后需要合并到develop

### 远程操作

- 先在github上创建空仓库，记录仓库地址
- 在本地的仓库中添加远程仓库：`git remote add origin 远程仓库地址`
- 指定用户密码的推送：`git push -u orgin master`

### 先克隆再推送

- 克隆：`git clone 远程仓库地址`
- 推送：`git push`
- 克隆后再推送不需要设置远程仓库地址，默认已经包含

### 免密码推送

- 产生秘钥对：公钥和私钥
  - `ssh-keygen -t rsa`，会在~/.ssh/目录下生成秘钥文件(id_rsa，id_rsa.pub)
- 将公钥的内容粘贴到托管服务器(github)的settings => SSH的选项下
- 之后就可以进行无密码的推送操作。

### 远程协作

- 在指定的项目中邀请合作开发人员，粘贴其公钥
- 推送前一定先拉下来最新的内容，合并，有冲突结局冲突，然后在推送
- `git pull`拉取操作并合并

### GIT原理

- 工作区 《=》 暂存区 《=》 本地仓库 《=》 远程仓库02

