# 性能优化 永远的大厂主题
- DOM 最贵的性能开销，没有之一
- 差点挂了
    10000次吗？ 不会
    可以瞬间完成
    1. chrome tab 都会有一定的内存的高度值
        10000条在边缘
    2. 内存消耗在哪里？
      12行 for循环不耗时
      13行 document 性能开销
        js 文档对象  js 操作DOM

两步走
1. 下载html,css 浏览器在渲染页面的第一步
    - html形成DOM树  树的查询
        tree 结构
    - css 解析执行 基于DOM 树生成CSS渲染树 selector 属性构成
        Render tree  layout width height marign padding postion
        遍历这棵渲染树，selector node css attribute 节点上的数据
        js 性能极其差的家伙
        1. js跟java 比是慢一点 
            c/c++/java 内存操作级别
            js 大概只有 1/5  脚本语言
            应用场景 js是目前唯一可以做前端的语言
            node 后端和移动端都可以
        2. js 就是一个第三者，是被浏览器逼出来的
            DOM树 + css渲染树 快速的把静态页面显示出来（第一要务）
            js动态的DOM ajax
            document.getElementById('') 巨大的开销
            js （语言世界） -> html + css DOM树世界
            别的语言没有 
        3. 分屏加载html 制高点