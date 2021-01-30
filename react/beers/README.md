# router 路由
1. 
    - beers 目录下 create-react-app beers
    - beers 目录下 npm i react-router react-router-dom
小程序 联想型学习react
/page  index  tabbar  my cart  小程序就内置了一个路由
2.  BrowserRouter 浏览器路由切换,以前是由后端负责
前端也可以做 我们要启动前端路由功能  不是标配
用BrowserRouter 包住 rouute的配置 接管整个项目
```js
    <BrowserRouter>
    <div>
      <Route exact path="/" component={Main}></Route>
      <Route path="/beer" component={Beer}></Route>
    </div>
    </BrowserRouter>
```
3.  <Route exact path="/" component={Main}></Route>
    exact 只匹配我们的首页
4. Main.js 组件化 切图
    html结构 大体上分为  section 
    header + loader + list + beer
