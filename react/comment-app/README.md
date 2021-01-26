# react 官方项目脚手架 create-react-app
npm i -g create-react-app
create-react-app comment-app
npm run start
npm i webpack@4.44.2
每次运行用 npm run start
1. create-react0-app 项目开发模板 快速
    - src 开发mulu
        - index.js 入口文件
- 评论应用 react 用来做UI界面
    怎么做？ 组件化
    可以拆分多少个组件 组合一些标签来完成一个功能？
    MVVM + 组件化  每个组件由一个js 组件（Comment 子类）+ css 文件构成
    CommetApp  
        CommentForm
        CommentList
            CommentItem
