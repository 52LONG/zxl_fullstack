//index.js
const App = getApp();//设立顶部栏高度
Page({
    data:{
      imgUrls:[
        'https://7a68-zhengxiaolong-2gncfs9w9dcdb8d0-1304585123.tcb.qcloud.la/image/b1.jpg?sign=93027c7728d054d631467fc585e8e35c&t=1611641003',
        'https://7a68-zhengxiaolong-2gncfs9w9dcdb8d0-1304585123.tcb.qcloud.la/image/b2.jpg?sign=ed0fd8faf3551e507562c38ab0268ac3&t=1611641018',
        'https://7a68-zhengxiaolong-2gncfs9w9dcdb8d0-1304585123.tcb.qcloud.la/image/b3.jpg?sign=74e1287d4e1febfc1327c82eb7ca3dcb&t=1611641047',
        'https://7a68-zhengxiaolong-2gncfs9w9dcdb8d0-1304585123.tcb.qcloud.la/image/b4.jpg?sign=ae29b5c664f55e92eea506f0ccd8442b&t=1611658018',
        'https://7a68-zhengxiaolong-2gncfs9w9dcdb8d0-1304585123.tcb.qcloud.la/image/b5.webp?sign=9ef47d911d7a5239536c6800457f7a8f&t=1611658075'
      ],
      duration:1000,//滑动动画时长
      interval:3000,//自动切换时间间隔
    },
    onLoad: function (options) {
    // 自定义头部方法
    this.setData({
      navH: App.globalData.navHeight
    });
  }
})