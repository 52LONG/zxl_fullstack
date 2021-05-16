'use strict';

const Controller = require('egg').Controller;

class HomeController extends Controller {
  async index() {
    const { ctx } = this;
    ctx.body = 'api hi';
  }
  async getArticleList(){
    const { ctx } = this;
    let sql = 'SELECT article.id as id,'+
              'article.title as title,'+
              'article.introduce as introduce,'+
              "FROM_UNIXTIME(article.addTime,'%Y-%m-%d %H:%i:%s') as addTime,"+
              'article.view_count as view_count,'+
              'type.typeName as typeName '+
              'FROM article LEFT JOIN type ON article.type_id = type.Id'
    const results  = await ctx.app.mysql.query(sql)
    ctx.body={data:results}
  }
  async getArticleById(){
    const {ctx} = this;
    let id = ctx.params.id
    let sql = 'SELECT article.id as id ,'+
    'article.title as title ,'+
    'article.introduce as introduce ,'+
    'article.article_content as article_content ,'+
    "FROM_UNIXTIME(article.addTime,'%Y-%m-%d %H:%i:%s') as addTime ,"+
    'article.view_count as view_count ,'+
    'type.typeName as typeName ,'+
    'type.id as typeId '+
    'FROM article LEFT JOIN type ON article.type_id = type.Id ' +
    'WHERE article.id ='+id

    const result = await ctx.app.mysql.query(sql)
    ctx.body ={data:result}
  }

}

module.exports = HomeController;
//RESTful  移动端APP 前后端分离的情况  简单和约束性
// 请求方式 get（获取资源）  post（在服务器新建资源）
//  put（更新资源） delete （删除资源）

// egg-sql
