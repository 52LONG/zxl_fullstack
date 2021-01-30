// webpack的入口文件  #root 真实的DOM 根组件
import React from 'react';//史上最强的MVVM开发框架
import {render} from 'react-dom';// 
// 小程序的app.json  中配置路由
//  Route 一条路由配置规则
import {BrowserRouter,Route} from 'react-router-dom';
import Main from './components/Main';
import Beer from './components/Beer';
import './index.css';//全局cssS
// 路由的配置
const Root = function(){
  return(
    <BrowserRouter>
    <div>
      <Route exact path="/" component={Main}></Route>
      <Route path="/beer" component={Beer}></Route>
    </div>
    </BrowserRouter>
  )
}
//react 小程序 vue mvvm 能不能操作DOM 就不去
render(<Root/>,document.getElementById("root"))