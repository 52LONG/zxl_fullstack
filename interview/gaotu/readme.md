1. http 和 https的区别
    http是不安全、简单的 无状态的 明文传输（未加密的）的
    SSL：Secure Socket 
    TSL
2. http 1.0/2.0 的区别
1.0 协议缺陷:

无法复用链接，完成即断开，重新慢启动和 TCP 3次握手
head of line blocking: 线头阻塞，导致请求之间互相影响

1.1 改进:

长连接(默认 keep-alive)，复用(串行)
host 字段指定对应的虚拟站点
新增功能:

断点续传
身份认证
状态管理
cache 缓存

Cache-Control
Expires
Last-Modified
Etag

2.0:

多路复用（并行）
二进制分帧层: 应用层和传输层之间
首部压缩
服务端推送



https: 较为安全的网络传输协议

证书(公钥)
SSL 加密
端口 443

3. http 获取请求有哪些
4. get 和 post 有什么区别
在restful web开发理念 一切皆资源

get 获取资源
post 新增资源  201
put 替换资源
patch 修改一部分
head 
delete
options
5. get 和 post 的底层有什么不同
6. post 两次分别发送什么，第一次会发生什么返回什么


浏览器架构

用户界面
主进程
内核
  - 渲染引擎
  - JS 引擎
    - 执行栈
  - 事件触发线程
    - 消息队列
      - 微任务
      - 宏任务
  - 网络异步线程
  - 定时器线程
