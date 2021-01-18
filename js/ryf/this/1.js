// ' user strict '; //启用严格模式
var bar = 2;
var obj = {//json object
    bar:1,
    foo:function(){//obj 属性
        console.log(this.bar);

    }

}
var fooc = obj.foo;//foo 函数
// var bar = 2;
obj.foo();// this 会指向 obj本身 ，函数的调用方式？作用域|运行环境？ 对象上的方法
fooc();//this? 普通函数