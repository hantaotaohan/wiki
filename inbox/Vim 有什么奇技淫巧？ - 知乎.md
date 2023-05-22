# Vim 有什么奇技淫巧？ - 知乎
来源：[（2 封私信） Vim 有什么奇技淫巧？ - 知乎](https://www.zhihu.com/question/27478597)

## 摘录内容

vim 中表示当前文件的方法：

```text
在命令行模式下：
% 当前完整的文件名
%:h 文件名的头部，即文件目录.例如../path/test.c 就会为../path
%:t 文件名的尾部.例如../path/test.c 就会为 test.c
%:r 无扩展名的文件名.例如../path/test 就会成为 test
%:e 扩展名

```

## 想法
