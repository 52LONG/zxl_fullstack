//负责项目的启动
//单点路口
import app from './app';//模块化 的极致是一个文件就做一件事
//app 路由 上传文件 json化 交给app 去做
//数据库的链接
app.listen(1234,()=>{
    console.log('服务已启动');
    
})

