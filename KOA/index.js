// const Koa = require('koa');
const Koa = require('./lib/application')
const app = new Koa();

// app.use((ctx,next)=>{
//     ctx.body = 'Hello World';
// })

// app.use((req,res)=>{ //ctx
//     res.end('hello long')
// })
app.use(ctx=>{
    console.log(ctx.req.url);
    console.log(ctx.request.req.url);
    console.log(ctx.response.req.url);
  
    console.log(ctx.request.url); // ctx.req.url
    console.log(ctx.request.path);
    console.log(ctx.url);
    console.log(ctx.path);
})
// 要listen执行后，use才会执行
// app.listen(3001) 
//两种方法
app.listen(3000,()=>{
    console.log('服务启动了');
})
//Koa显著提高我们的开发效率
//Koa 与原生的区别 ctx(req,res功能与一身的),next，use(保存回调),listen(原生的listen)


// let http = require('http');
// //req是前端给后端
// //res是后端给前端响应的值
// let server =  http.createServer((req,res)=>{
//     res.end('Hello World');
// })
// server.listen(4000)