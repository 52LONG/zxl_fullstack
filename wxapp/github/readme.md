- github 小程序
    小程序的组件语法
    component 
    1.vant 框架开发
    2.apifm 后台API
    3.两手空空如也

- 应用的截图
- 小程序的架构升级了
    /pages  
    /components 组件
    html 标签构成页面 ，不利于分工协作
    组件就像积木一样，拼成页面
    search 页在公用的
    page 里调用了组件 <component-name repo="item"></component-name >
    component 声明一下repo 
    properties:{
        repo:{
            type:Object,
            valuse:{}
        }
    }
