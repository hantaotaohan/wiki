- # Linux平台下安装Git或者从源码构建
-
- Debian平台下安装方式 
  ``` bash
  sudo apt install git
  ```
-
- Debian平台下从源码构建
-
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