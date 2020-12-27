- 阮一峰
  继承3篇
  - js是一门弱语言，它在声明变量时无需确定变量的类型，js在运行时会自动判断。那么如何判断一个变量的类型呢，js提供了typeof运算符，用来检测一个变量的类型。
  1.js 变量的数据类型由值决定
    常量 es6以前没有常量 都是用var
    - 数据类型不可改变
    - 简单类型的值是不可变的，复杂数据类型值是可以改变的
    - 数值型、字符串、布尔值、undefined、null、symbol、对象{数组、函数}

  2.typeof [1,2,3] 如果知到是数组
    区别简单数据类型和复杂数据类型
    复杂数据类型之中有 function
    typeof 可以正确（细致）得到数据类型的
    number string boolean null undefined symbol object(array,function)
     Object.prototype.toString.call() 核心
     Object 是谁？所有对象的原型对象？ 这种机制怎么构建起来？
     prototype 啥玩意
     call 借
     Object.prototype.toString.call([1,2,3]) // [Object Array]
     Object.prototype.toString.call(null) //[Object null]
     toLowerCase() 忽略字母大小写



]