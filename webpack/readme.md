# 进阶的开发方式
- parcel
- parcel 的哥哥 webpack
- webpack 面试的重灾区
    工作流程，没有webpack ，何以代码？
    1. bulid 打包为了上线 dist/   dev  src/ 开发阶段
        bulid 打包 编译 .c 编译成 .o  javac java 
        在package.json 的script中添加    "build": "webpack --mode=development"
    2. 入口文件 index.html
    命令步骤：
    npm init -y
    npm i webpack
    npm i -D webpack-cli
    npm run build

    main.js -> bundle.js 
    js es6|7|8|9|10 老浏览器不支持 编译一下
    stylus css 编译一下   nmp run build 编译一下
    webpack 来执行代码生产工艺
    webpack --mode=development


    

     

