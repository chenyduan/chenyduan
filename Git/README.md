# Git

- 官方 https://github.com/git/git.git

## .gitignore 文件
~~~
abc.md  # 忽略adc.md文件


!xyz.md  #不忽略该文件


*      # 忽略全部文件
!Git/    # 在上一步忽略全部的情况下, 不忽略 Git 目录
!Git/**   # 在上一步忽略全部的情况下, 不忽略 Git 目录下的文件
~~~



## Git 的GUI 客户端
- sourcetree
https://www.sourcetreeapp.com/

- sourceGit 开源 
https://github.com/sourcegit-scm/sourcegit.git

- Rust开发的Git客户端 https://github.com/gitbutlerapp/gitbutler.git
- LazyGit,GO实现的客户端  https://github.com/jesseduffield/lazygit.git

## Git 的第三方实现，一般用于学习
- Rust实现的Git https://github.com/GitoxideLabs/gitoxide.git


## Git 子仓库
- 在子仓库中有一个.gitrepo 文件
- https://github.com/ingydotnet/git-subrepo.git
