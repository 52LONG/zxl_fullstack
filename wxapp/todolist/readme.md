# 小程序之左滑
    - 小程序目录的意义
    1. pages/ 是最简单的页面架构
        四大天王 wxml wxss js json
    2. utils/
        工具目录 各个页面共用的js 工具函数 日期格式化函数
    3. components/ 
        组件化 
    4. wxs 类js 的复用 utils？
        直接就被模板复用
          wxs封装比原生js更优秀
        utils -> js 文件中引入 + wxml 里面去复用
        新的语言wxs
    - 你我他
        用户 (隐私) -> 开发者 -> 小程序微信（服务器）
            - flex 等比例分配
        父元素上设置display:flex;
        子元素上设置flex:1 等比例分配
    
    