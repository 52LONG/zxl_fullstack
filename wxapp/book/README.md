# vant 前端框架 + 工厂API
- 云开发 来了
  云端直接数据储存
  vant 负责界面
  数据操作的小程序 云端的mongodb 数据库 ，是可视化的
- 怎么操作数据？
  1.如何把数据读出来
  2.如何把数据界面做好看
    - npm init -y // 在miniprogram 文件终端命令下执行
    - npm i @vant/weapp -S --production
- block 承载指令
- wx:for wx:key  优化
- 尊重用户隐私 （头像、呢称。。。）需要得到用户的认可
  open-type="getUserInfo" 弹出
  等用户决定
  bindgetuserinfo="getUserInfo" 判断用户选择哪个 允许还是拒绝
  open-type 属性增加 getUserInfo ：用户点击时候会触发 bindgetuserinfo 事件。

  新增事件 bindgetuserinfo ：当 open-type 为 getUserInfo 时，用户点击会触发。可以从事件返回参数的detail字段中获取到和wx.getUserInfo 返回参数相同的数据。
  API wx.getUserInfo 只会弹一次框，用户拒绝授权之后，再次调用将不会弹框

  组件  由于是用户主动触发，不受弹框次数限制，只要用户没有授权，都会再次弹框

