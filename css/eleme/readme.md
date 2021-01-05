- stylus模块化
    @import 引入

- vertical-align: top
    兄弟元素的对齐方式，有图片的时候
    inline-block + font-size 0 既不换行也不inline

- brand 图标 原尺寸：60*36
    30*18 手机大部分是retina 屏幕的两倍
    三倍retina 屏 iPhone12 Max  90*54 
    前端别打包，图片要搞好
    css像素 (物理像素) 30*18
    retina 60*36
    3倍 retina 90*54
    媒体选择器
    @media (-webkit-min-device-pixel-ratio: 3)最小设备像素比为3(min-device-pixel-ratio: 3)
- bg-image($url) 函数 mixin 混合
    函数运行后有一个返回值
    mixin 是所有的代码都混和调用它的位置上去
    完成这部分代码的复用
    background-image: url("brand@3x.png"); 
- stylus 让css变成了编程语言
    1. 嵌套 tab 缩进 let ｛｝代码块 方便管理 
    集体下线 好管理  易于删除 有代码的组织能力
    2. 函数的能力 代码复用
    3. 变量  
        bg_color = rgba(7,17,27,0.5);
        background: bg_color  
   