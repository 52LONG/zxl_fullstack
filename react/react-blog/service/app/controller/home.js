'use strict';

const Controller = require('egg').Controller;

class HomeController extends Controller {
  async index() {
    const { ctx } = this;
    ctx.body = 'hi, egg';
  }
  async list(){
    const {ctx} = this;
    ctx.body = '<h1>Long</h1>'
  }
}

module.exports = HomeController;
//RESTful  移动端APP 前后端分离的情况  简单和约束性
// 请求方式 get（获取资源）  post（在服务器新建资源）
//  put（更新资源） delete （删除资源）


