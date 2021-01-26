 前端三个最重要的知识点
 1. es6
 2. webpack
 npm i -g webpack
 npm i -g webpack-cli 周边生态
 node .\webpack.config.js
 webpack
 npm i react react-dom
 npm i babel-loader -D
 npm i @babel/core @babel/preset-env @babel/preset-react -D
 修改之后都要 webpack一下 重新编译
 npm i -g create-react-app
 create-react-app comment-app
 3. react
 
 - webpack 处理入口文件为js文件
 - 写代码的时候再 src/index.js 上线的dist/main.js
    webpack 有着掌控力
 - react 初体验？
    1. 每个文件都得引入react  
    React 负责提供组件（小程序有内置的组件概念，网页(html/css/js dom)） 模板编译功能{{}} 
    {name}数据绑定
    ```js
        import React from 'react';
        import ReactDOM from 'react-dom' 
    ```
 - index.js entry 引入了test.jsx
    react 语法中JSX语法 用来表示模板
    ```JS
    render(){
        return (
            <p>测试一下</p>
        )
    }
    ```
    webpack 处理一切的静态文件, bundler
    .jsx -> .js
    loader