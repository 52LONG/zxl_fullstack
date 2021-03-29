//app 的创建以及基本配置 中间件 =（node 开发）
//es6 module typescript => =>js
import express from 'express';
import postRouter from '../post/post.router';
const app = express();
//app 处于伺服状态 eventEmitter

// body处理要加中间件 bodyParser
//得到内容 获得postman 添加的数据内容 
const bodyParser = require('body-parser'); //使用中间件来获得
app.use(bodyParser.urlencoded())

//中间件来打理 函数
//所有的路由都在这里汇总
app.use(//接收一个函数就能运行
    //文章模块的路由 存、删、改、查
    postRouter,
    //用户路由


);

export default app;