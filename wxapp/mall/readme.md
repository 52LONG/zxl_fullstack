# 电商小程序开发
    前端
- 前端框架 vant  
    1. 安装 npm i @vant/weapp -S --production
    来自于有赞，微信生态的为长
    2. 安装 npm init -y 
    安装第三方生态
    3. 构建
    miniprogrogram_npm
    @vant/weapp/button/index
- api在哪？
    商品列表
    安装 npm i apifm-wxapi
    apifm-wxapi 库 提供数据
- 电商项目的的感觉
    搜索栏
    导航栏
    banners
    推荐
    商品列表-
- 总结一下搜索经验 把自己当成小白
    placeholder + padding-left +bindinput +bindConFirm + search 图标

- 业务
    1.搜索
    2.tabbar（前端效果）条件筛选业务（后端查询参数？ Order（排序）= price ）
    3.列表业务 wx:for 
    data:{
        goods:[]
    }
    apifm 
    url: /goods?order=&page=${n}&size=20 &keyword=addidas    []  分n页,一页20条
    4.购物车 
                       
    