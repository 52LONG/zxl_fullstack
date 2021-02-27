# 字节react 技术栈要求   
    - react
        jspang  react-router  redux  打卡 
        react hooks  class 很少  函数式组件
        ts
    - 牙羽 js 系列 小黄书
    - 山月  神三元  面试系列 
    - leetcode  

    - npm init -y
    - npm i webpack --save-dev 
    - 在package.json的devDependencies下手动添加"webpack-cli":"^3.3.12" 然后  npm i
    - npm i webpack-dev-server --save-dev
1. 开发流程 react+hooks+ts  大型项目  webpack 、webpack-cli、 webpack-dev-server
webpack-cli  4.0 版本 与webpack 5兼容问题
手动的指定 安装 webpack-cli 3.3.12
    "webpack": "^5.24.1",
    "webpack-cli": "^3.3.12",
    "webpack-dev-server": "^3.11.2"
    在package.json的scripts下添加"start": "webpack-dev-server --mode development --inline --hot --open",
    1.1 配置开发流程 三兄弟
        --hot  热更新 更新更加友好
        --open 会自动打开浏览器运行
    1.2 npm install css-loader style-loader file-loader url-loader html-webpack-plugin awesome-typescript-loader mini-css-extract-plugin --save-dev
    css-loader style-loader file-loader url-loader 
        webpack loader机制 转译 或编译   
        html-webpack-plugin
        mini-css-extract-plugin webpack 插件 
        awesome-typesript-loader ts -> js 
    1.3  npm i typescript --save-dev
    typescript-loader  typescript 
        tsconfig.json 将ts -> js

    1.4 npm install @babel/cli @babel/core @babel/preset-env @babel/polyfill --save-dev
    npm install babel-loader --save-dev
    npm run start
    js   babel es6 -> es5
        @babel/polyfill ? 
        babel-loader 也坑  
        .babelrc 文件

    1.5 webpack.config.js 
        entry-> output 
        module test loader 

    1.6  src/ index.html  root
    npm i react react-dom  --save
    npm i @types/react @types/react-dom --save-dev
2. react  react-dom
    ts + react 这才是阿里郎
    npm i @types/react   @types/react-dom  react的类型约定
    ts 类型化的js 

- app.tsx
    根组件 tsx webpack -> ts-loadder -> babel-loadder
- index.tsx 
    入口文件 webpack entry 打理
- react 16 后， 可以在函数组件里面直接使用状态
全面拥抱函数式编程
    useState 超级函数
    1. 创建了name状态
    2. setName 修改状态的值
    3. 初始值