//整理 为什么koa里面没有req
let url = require('url')

let request = {
    get url(){
        return this.req.url
    },
    get path(){
        return this.req.path
    }
}

module.exports = request


 