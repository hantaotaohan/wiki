- # 《JavaScript高级程序设计》 | 马特.弗利斯比
    - 第一章: 什么是JavaScript
        - 1995年问世 
        - *JavaScript是一门与网页交互的编程语言*
        - JavaScript包含三个部分
            - 核心 (ECMAScript)
                - ECMAScript 其实可以看做是一种规范, JavaScript 实现了 ECMAScript
            - 文档对象模型 (DOM)
                - 文档对象模型实际上是一个编程接口 (API)
                - 它将整个页面抽象为一组分层的节点
            - 浏览器对象模型 (BOM)
                - 可以支持并且操作浏览器窗口
    - 第二章: HTML中的JavaScript
        - 将JavaScript插入HTML中的主要方法就是使用 `<script>` 元素
            - `<script>`元素有八个属性:
                - async: 立即开始下载该脚本, 但不能阻止其他页面动作
                - charset: 使用`src`属性设置指定代码的字符集
                - crossorigin: 配置该脚本的跨资源共享设置
                - defer: 等待页面加载完毕, 在执行该脚本
                - integrity: 允许检查脚本的签名以及完整性
                - language: 废弃
                - src: 要执行外部代码的路径
                - type: 标识代码块中脚本语言的内容类型, 代替language属性的存在
            - 使用 `<script>` 的方式有两种:
                - 直接在网页嵌入JavaScript代码
                - 或者使用 `src` 属性加载外部JavaScript代码
            - *包含在 `<script>` 元素代码会被从上到下解释, 并且按照顺序执行*
            - 放置的位置:
                - *一般来说把所有JavaScript引用放到 `<body>` 元素中内容的后面*
                - 理由是页面在处理JavaScript之前会完整的把页面渲染完毕, 用户感觉加载更快了

**sdfasdf**
*sdfasdf*
> asdfasdf