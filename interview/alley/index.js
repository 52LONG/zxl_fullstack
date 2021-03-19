const koa = require('koa');
const mount = require('koa-mount');
//静态文件 static -> cdn
const serve = require('koa-static');
const fs = require('fs');
const app = new koa();
//  __dirname 相当于使用绝对路径
app.use(serve(__dirname+'/static'));//加载static 文件中的静态资源
//扒一个网站有什么问题  过几天css 小米官网更新了
app.use(
    mount('/',ctx =>{
        ctx.body = fs.readFileSync(__dirname+'/max_count.html','utf-8');
    })
)
app.listen(1234);