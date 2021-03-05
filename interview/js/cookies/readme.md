cookie

npm init -y 
npm i koa

1. Cookie 是服务器中在客户端的存储数据 每次在发现请求的时候都会带上
Cookie 比较小 4kb uid= 12121212
2. 
    node 设置 cookie
    有哪些选项
    domain
    path
3. 讶羽
    cookie 安全问题
    cookie 由服务器端种下，写在客户端是一段比较小的文本
    每次都要传给服务器
    有些攻击，可以得到用户的cookie
    得到cookie 就可以伪装成用户去下单

    httpOnly:false  为了前端也能操作
    cookie 不自量力
    document.cookie js 
    httpOnly:true 默认是true 这样更安全
    前端什么都能做 连node + go 写
    前端也操作cookie 有些cookie没那么重要
    比如一些用户设置 夜间模式(低安全性) uid(高安全性)

    Cookie 与 locastorage 
    都是用来做存储的 区别
    cookie 4kb 用户状态 最基本用户配置
    locastorage 5mb lokijs 数据库 多存一些
    用户的地址  用户看了哪些内容

    Cookie 的性能不好
    浪费的地方 每次HTTP 请求都带上它 开销
    http 是一种无状态的网络协议 cookie登录
     http 是一种无状态协议  一个请求一个返回
    Cookie 是http 的状态的一种弥补
    localStorage 只存在于客户端 性能好
