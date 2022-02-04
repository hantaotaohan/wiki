- # Linux平台下安装Git或者从源码构建
-
- Debian平台下安装方式 
  ``` bash
  sudo apt install git
  ```
-
- Debian平台下从源码构建
- 1. 下载源码
  ``` bash
  wget https://mirrors.edge.kernel.org/pub/software/scm/git/git-2.9.5.tar.gz
  tar xzf git-2.9.5.tar.gz
  cd git-2.9.5
  ```
-
- 2. 开始构建
  ``` bash
  ./configure
  make all
  sudo make install
  ```
-
- 3. 如果想在其他位置安装Git
  ``` bash
  ./comfigure -- prefix=/usr/local
  make all 
  sudo make install
  ```