- 全栈 node + ts

- 数据库
    端口通信 3306->3000
    node fs http 比较复杂
- MVC
    数据库 -> Model -> Controller -> Router(API)
    post 
    someone -> http -> requerst(url) -> router -> controller -> Model ->Mysql2(翻译官)
- posts add 
    controller -> restful 路径
    Mysql 有post表  
    POST(方法) 添加数据  设置路径  /posts 
- router 在哪里?  形象描述为迎宾
- controller   形象描述为丈母娘
- model  service   彩礼 model只是一个映射，帮助进入数据库

- 单点入口

# 命令
- npm init -y 
- yarn add typescript tsc-watch
- yarn add express @types/express
- yarn add body-parser 添加中间件