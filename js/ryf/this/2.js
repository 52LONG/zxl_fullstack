var foo = 6;
// 对象 this，内存挂钩  
var a = 1;//内存怎么操作 内存中开辟一个空间 number a 1
var obj = {//内存中开辟一个空间比较大 -> 指向map空间 字典查
    foo:5,
    // 特别处理
    // 内存 ，把我们的代码 通过文件系统读取内存 I/O 开销最大
    // 地址,执行cpu
    // func();函数中，重新的分配一个执行空间，进入执行栈
    // 创建一个作用域 scope 变量额查找链 this
    func:function(){
        console.log(this.foo);
    }

}
// var foo = 6;
var func = obj.func;
obj.func(); //从.运输  对象属性查找 -> 对于地址的不断查找
func();