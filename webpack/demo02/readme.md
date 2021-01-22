# 史上最强工作套件 webpack 企业级开发
完整的通知整个开发流程
https://www.cnblogs.com/fps2tao/p/10879910.html
1. parcel webpack
    parcel 约定  index.html .styl .ts
    webpack 入口 js文件 entry

    一个企业级开发的传送带
    webpack 编译的
    webpack webpack-dev-server   webpack 一样的功能 
    webpack.config.js 配置 编译 http dev server
    entry -> module(css|js|jsx|png)->output
    webpack.config.js文件中
    module:{
        rules:[
            {
                test:/\.css$/,
                use:['style-loader','css-loader']
            }

        ]
    }
    然后输入命令下载
    npm i -D style-loader
    npm i -D css-loader
    npm run build
    可以将css编译成js文件