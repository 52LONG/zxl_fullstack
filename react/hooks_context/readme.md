- 前端登录流程
- /login
  /home

- package.json 内  
"scripts": {
    "start": "webpack-dev-server  —mode development —inline —hot —open",
    "build": "webpack  —mode development"
  },
-  entry: ["@babel/polyfill", "./index.tsx"],
    "@babel/polyfill"为了兼容性而来 
    更低端的ie版本ie10 ie9
- login  (name password) => pageB 用户显示 