let EvenyytEmitter = require('events') //事件触发器
let http = require('http')
let context = require('./context')
let request = require('./request')
let response = require('./response')
class Koa extends EvenyytEmitter{
    constructor(){
        super()//超级继承 为了让Koa的属性和方法实例对象app继承
        this.fn
        this.context = content
        this.request = request
        this.response = response
    }
    use(fn){
        this.fn = fn;
    }
    createContext(req,res){//构建ctx
        const ctx = Object.create(this.context)
        const request = ctx.request = Object.create(this.request)
        const response =ctx.response = Object.create(this.response)
        ctx.req = request.req = response.req = req
        ctx.res = request.res = response.res = res
        request.ctx = request.ctx = ctx
        request.response = response
        response.request = request
        return ctx
    }
    handleRequest(req,res){
        let ctx = this.createContext(req,res)
        this.fn(ctx)
        res.end(ctx.body)
    }
    listen(...args){
        let server =  http.createServer(this.handleRequest.bind(this))
        server.listen(...args)
    }
}
module.exports = Koa