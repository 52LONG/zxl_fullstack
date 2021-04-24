//ctx 是怎么来的



//打造ctx 
let proto={
    //url:request.url
}
//使用对象中的代理来实现 ctx.url  ctx.path
function defineGetter(prop,name){
    proto.__defineGetter__(name,function(){
        return this[prop][name] //this == ctx
    })
}
// 了解服务器端渲染
defineGetter('request','url')//url == request.url
defineGetter('request','path')
module.exports = proto