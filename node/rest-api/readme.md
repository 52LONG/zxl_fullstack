# api restful
前端和后端交流的接口
mongodb 存的数据是json 文档
mysql 关系型 table

- 网站中 一切皆资源 资源用URL访问
  http://localhost:3000/posts

npm init -y
npm i json-server
在package.json 文件中
"dev": "json-server db.json"
npm run dev

- http 动词一起来构建 访问资源的语义
    GET    http://localhost:3000/posts 拿到所有的评论
     http://localhost:3000/posts?id=1 传统的URL
    GET    http://localhost:3000/posts:id 拿到某一条评论

- 语意化的url 语意化的html标签 header footer main  
    url  有美学的 设计的
- 谓语动词 GET POST DEKETE 改？对资源的处理 
    新增加一条post 怎么设计url
    url http://localhost:3000/posts 
    新增一条资源 restful 写的不是代码 只是大自然的搬运工
    POST 动作语义 新增一条资源 http://localhost:3000/posts 
    DELETE 删除一条资源  http://localhost:3000/posts/3 删除id为3的
    修改用哪个语义动词？ PUT ? PATCH?
    PATCH http://localhost:3000/posts/3  修改id为3的资源信息 不传author 不影响
     PUT  http://localhost:3000/posts/3  修改id为3的资源信息 不传author,author 会被删除掉
     两者的区别
       PATCH 拿新的对象和旧的对象比较 做补丁 
       PUT 完全替代，拿一个对象整个替换掉 替换

        http://localhost:3000/posts/3
        如何找 代码 查数据库 技术问题
        Restful 是一个概念 数据库里所有的posts
        http://localhost:3000/posts/
         GET|PUT|PATCH|DELETE|POST  http://localhost:3000/posts/3 第3条 
         是对资源的访问及处理的完美URL设计




