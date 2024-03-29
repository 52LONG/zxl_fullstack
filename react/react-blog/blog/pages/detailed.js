import Head from 'next/head'
import React from 'react'
import {Row,Col,Breadcrumb,Affix}from 'antd'
import Header from '../components/Header'
import axios from 'axios'
import{FieldTimeOutlined,FolderOutlined,FireOutlined}from '@ant-design/icons';
import Author from '../components/Author'
import Advert from '../components/Advert'
import Footer from '../components/Footer'
import marked from 'marked'
import hljs from 'highlight.js'
import 'highlight.js/styles/monokai-sublime.css';
import Tocify from '../components/tocify.tsx'
const  Detailed=(props)=> {
    let articleContent=props.article_content
  const tocify = new Tocify()
  const renderer = new marked.Renderer();
  renderer.heading = function(text, level, raw) {
    const anchor = tocify.add(text, level);
    return `<a id="${anchor}" href="#${anchor}" class="anchor-fix"><h${level}>${text}</h${level}></a>\n`;
  };
  marked.setOptions({
    renderer: renderer, 
    gfm: true,
    pedantic: false,//可以容错
    sanitize: false,//不忽略html标签
    tables: true,//根据git来输出表格 需要gfm
    breaks: false,//使用原来的换行，不使用github的
    smartLists: true,//默认列表样式
    smartypants: false,
    highlight: function (code) {
      return hljs.highlightAuto(code).value;
}
  }); 

    let html = marked(articleContent) 

  return (
    <div >
      <Head>
      <title>博客详情页</title>
      </Head>
    <Header/>
    <Row className="comm-main" type="flex" justify="center">
        <Col className="comm-left" xs={24} sm={24} md={16} lg={18} xl={14}>
          <div className="bread-div">
            <Breadcrumb>
            <Breadcrumb.Item><a href="/">首页</a></Breadcrumb.Item>
            <Breadcrumb.Item><a href="/">面试总结列表</a></Breadcrumb.Item>
            <Breadcrumb.Item><a href="/">{props.title}</a></Breadcrumb.Item>
            </Breadcrumb>
          </div>
            <div>
              <div className="detailed-title">
                {props.title}
              </div>
              <div className="list-icon center">
                 <span><FieldTimeOutlined />{props.addTime}</span> 
                <span><FolderOutlined />{props.typeName}</span>
                <span><FireOutlined />{props.view_count}</span>
              </div>
              <div className="detailed-content" dangerouslySetInnerHTML={{__html:html}}>
        
              </div>
            </div>
          </Col>
        <Col className="comm-right" xs={0} sm={0} md={7} lg={5} xl={4}>
          <Author/> 
            <Advert/>
          <Affix offsetTop={5}>
          <div className="detailed-nav comm-box">
            <div className="nav-title">文章目录</div>
            <div className="toc-list">
                {tocify && tocify.render()}
          </div>
          </div>
          </Affix>
        
        </Col>
    </Row>
    <Footer/>
    </div>
  )
}
Detailed.getInitialProps = async(context)=>{
  console.log(context.query.id);
  let id = context.query.id
  const promise = new Promise((resolve)=>{
    axios('http://127.0.0.1:7001/default/getArticleById/'+id).then((res)=>{
      console.log(res);
      resolve(res.data.data[0])
    })
  })
  return await promise
}
export default Detailed;