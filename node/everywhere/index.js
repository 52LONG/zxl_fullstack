const express = require('express');
const app = express();
//这是什么？ process node 的内置的对象 进程 前端的windo
// 进程里 运行环境 env PORT 端口
// 如何从env 拿到PORT 设置 默认4000  手动指定端口号
const port = process.env.PORT || 4000;
app.get('/', (req, res) => res.send("hello world,阿里"))

app.listen(port, () => console.log(`Listing on port ${port}`))
