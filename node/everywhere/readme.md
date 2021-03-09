npm i express
npm i nodemon    nodemon让我们 node 支持热更新
在package.json 文件中添加
    "dev":"nodemon index.js"
npm run dev
npm i cross-env

如何不写死端口号 让我们在运行时 环境来得到?
cross-env  跨平台，  window mac  linux  
  process.env 是兼容性问题
  PORT=123  SET PORT=1234  系统变量
修改为
      "dev": "cross-env PORT=1314 nodemon index.js"