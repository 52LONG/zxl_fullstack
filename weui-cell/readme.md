# css 的程序性

-BEN
 Block weui-cell 项目名称 xp-  jd- tb-
 -stylus 
  css 有太多规则
  stylus 是css的超集 ，可以编译成css
  -省去了{：;}
 装插件 code里面 language stylus 
 npm i -g stylus  安装css编译
 stylus --version 查看版本和运行
 stylus cell.styl 
 -stylus -w cell.styl -o cell.css 将.styl文件转换为.css文件
  写的是styl文件， html 无法显示
  -o编译一下 cell.css
  -w 边写边编译
-弹性布局 flex
 1.如何启用的呢？
  display:flex | inline|block|inline-block
  弹性布局设置在父元素上，启动了新的空间
  原有的盒子属性被打破了，
  .weui-cell(display:flex)>新的空间，原有块级能力被干掉
  .weui-cell__bd(flex:1 主元素)+.weui-cell__hd (辅元素)
-伪元素
在CSS高级使用技巧，唯一一个可以在CSS中声明的html元素，箭头、边框等高级特性
content 属性是必须的
定位 position: relative; position: absolute;
乾坤大挪移 手动移动
 - &::after
            content '伪元素'
       
 - &::before
            content '开始伪元素'

 


 

