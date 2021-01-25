- 图片性能优化，我们想到什么？减少HTTP数，lazyload  throttle
- 编解码
    data:img/jpg;base64，文件头base64格式  /9j/文件内容
    google 大量的使用base64 减少请求数 是最严重的页面性能影响
    - 优点 (1)base64格式的图片是文本格式,占用内存小,转换后的大小比例大概为1/3,降低了资源服务器的消耗; (2)网页中使用base64格式的图片时,不用再请求..
    .jpg和.jpg.webp格式对比
    .webp格式大小更小
    转换为.webp网站： https://convertio.co/zh/webp-converter/ 
    - npm i webp-converter
    1. 网页性能优化
        - 历史 lazyload scroll +  API ,减少一些执行次数 throttle
           window.addEventListener('load', lazyload, false);
        - 现在有的 base64 把图片请求的机会都没了 不是所有的图片
        衡量，小一点的图片
        ？ 哪种开发？
        - 大图的话 特别是头图 banner 图 商品详情页的图片
        可以在 webp 大小减少25% + 清晰度不受损 + lazyload
    - js 多线程的苗头 Worker 推出有一段时间了 但是没有成为主流  有多线程的能力  看 work.js
     new Worker('js 文件') 单独运行，不会阻塞主线程
     1. 跟dom 相关的事情不能做 
        js 是css/html 的第三者
        Worker 不能和主线程去同时操作同一个元素


