// 配置一下 完成 src/inde.js  -> dist/main.js
const path = require('path')
// console.log(__dirname); //node 超级变量 当前项目的绝对路径
// path.resolve 返回一个路径
// console.log(path.resolve(__dirname,'dist'));
module.exports = {
    entry: './src/index.js',
    output: {
      filename: 'main.js',
      path: path.resolve(__dirname, 'dist')
    },
    // 一个个模块化打理 js babel await
    /**
     * css styl -> css
     * js  jsx -> js
     */
    module:{
        rules:[
            {
                test:/\.jsx?$/,
                // 使用什么东西来处理这个模块 生产流程的一个车间
                use:{
                    loader:'babel-loader',
                    options:{/**babel-loader 是js转译的 */
                        /**babel-loader 的配置 预处理
                         * let var js es6 -> es5
                         */
                        presets:['@babel/preset-env','@babel/preset-react']
                    }
                }
                // ['jsx-loader','js-loader']
            },
            // {
            //      text:/.\.styl$/,
            //      use:{
            //          loader:'stylus-loader'
            //      }
            // }
           

        ]
    }
  }
  