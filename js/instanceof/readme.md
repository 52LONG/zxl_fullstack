- instanceof
- 手写一个instance_of 函数
- 原型三者关系
    类（构造函数+原型对象） 实例对象
    Constructor.prototype = 原型对象
    原型对象.constructor = 构造函数
    实列对象.__proto__ = 原型对象
    Instanceof 原型对象的两种表示 或者沿着原型链不停的查找