- 用数据源表达界面  数据驱动的界面
  articles:[
      {
          contentID:1177432,
          cover:'',
          pubdata:'2017-06-27 00:45:00'
          title:'Quora精选：为什么聪明人总能保持冷静？'

      }
  ]
  小程序第一个：
  架构简单:页面
  每个页面由四个文件组成
  .wxml == .html view =div
  .wxss == .css
  .js == .js
  约定 js data 放的数据 wxml{{显示出来}}
  1.哪些小程序组件？
  2.数据
  {{}}
  setData({
      key:val
  })
  页面会根据数据的改变而改变