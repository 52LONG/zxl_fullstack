# grid 布局

- 在哪里，大家看过九宫格这种布局方式
  1. google 图片验证

- 考题中，让有多少元素在屏幕中居中的方法？
    - flex body  display:flex   justify-content:center align-items:center; 一代
    - grid  二代 二维的时候 justify-content:center  align-
    - 定位
    - margin  margin: auto
    - 
- grid-template-row|columns 
    布局可以直接对二维声明
- 9个元素 ，请大家给一个方案，每个格子颜色不一样
    - JS 是王者 ele.style
    - css 方案 .box:nth-child
         .box:nth-child(1|odd|event) : last-child
    - 别的方案 ？ 更多格子呢？ 
        stylus 来做
        .box
        for n in (1..9)
        &:nth-child({n})
            background-color rgba(n*20,n*5,n*9,n*0.1)
- 弹性布局在解决现代移动端甚至未来物联网，不好解决或者解决麻烦
    九宫格 多加每一行的父元素
    grid 的二维布局方案
- 在垂直方向做主元素分配高度
    display:grid  +grid-template-rows:1fr auto

- fistChild  lastChild childNodes
    childNodes 中换行符会作为空的文本节点来
    lastElementChild 获取最后一个元素的内容
