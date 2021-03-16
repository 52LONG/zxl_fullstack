nginx 静态网页 HTTP 服务
动态 node 

1. centos  node 
    - nginx   wget  
     cd /
     cd /usr/local/bin/
    - wget https://npm.taobao.org/mirrors/node/v12.16.1/node-v12.16.1-linux-x64.tar.gz
    - 解压命令 tar -xvf node-v12.16.1-linux-x64.tar.gz
    -  rm -rf node-v12.16.1-linux-x64.tar.gz
    -  mv node-v12.16.1-linux-x64/ node
    - cd node /
    - cd bin
    - ./node -v
    - ./node 
    - cd /
    - 全局命令  linux ? 配置软连接
    cd bin
    ln -s /usr/local/bin/node/bin/node /usr/bin/node

    1. /www  mkdir  /koa-demo
    2. cd koa-demo   npm init -y
    3. npm i koa --save
    4. vi app.js
2. Koa code 
    ```
    const Koa = require('koa');
    const app = new Koa();//引入最好的node 开发框架
    const app = express();
    const app = new Koa();
    //中间件 middllewares 函数
    app.get('/' (req,res) => { //express
          res.send('hello world');
    })
    //这一次http服务流程 请求和响应的过程
    // app.use 启用一个中间件
    app.use(async ctx => {//ctx express  ctx =req + res
            ctx.body = 'Hello World'; //res body 响应体
    })
    //在3000 伺服
    app.listen(3000);

    ```
    node app.js 命令行一直霸占在那
    3000 任何人发出请求 ctx 伺服
    后台运行
    ------------------ 在code  yun/nginx 文件下  并建文件app.js中
    npm init -y 
    npm i koa
    node app.js
    npm i  pm2
    pm2 start app.js
    ----------------- 
    npm config set registry https://registry.npm.taobao.org 淘宝源
    npm i pm2
    ./node_modules/.bin/pm2 start app.js 启动






