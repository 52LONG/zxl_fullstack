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
    npm i webpack  需要创建webpack.config.js文件
    npm i webpack webpack-dev-server
    
    npm run build
    npm i -D style-loader
    npm i -D css-loader

    main.js -> bundle.js 
    js es6|7|8|9|10 老浏览器不支持 编译一下
    stylus css 编译一下   nmp run build 编译一下
    webpack 来执行代码生产工艺
     "build": "webpack --mode=development" 两个有区别
     "build": "webpack --mode=production"
    webpack不会实时更新修改，就只是一个打包工具，webpack-dev-server会实时自动更新修改
    webpack打包输出路径，output字段为path，webpack-dev-server打包输出路径，output字段为publicPath(此值为空时默认是项目根目录)
    webpack打包输出的文件，是真的存在于物理地址path中，而webpack-dev-server打包输出的文件，是保存在内存中的，在项目目录中是找不到的。



    

     

