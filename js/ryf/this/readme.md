- 阮一峰 js

1. 函数的this  调用方式和作用域|上下文环境相关
    函数作用域 scope  变量查找？
    函数内部查找 -> 外部 闭包 （函数嵌套函数）
    //全局
    (function(){
        //上
        return function(){
        //环境
        //下
        //this 当前的运行环境
        }
    })()
    - 差异的本质来自于this 的使用 
        函数运行时所在的环境
        obj.foo对象的方法
        foo 普通函数 运行方式-> 所在的环境
        （window|global|strict）
- 函数的运行环境由什么决定？
    每个函数都有自己的执行环境，当执行进入一个函数时，函数的执行环境就会被推入一个执行环境栈的顶部并获取执行权。当这个函数执行完毕，它的执行环境又从这个栈的顶部被删除，并把执行权并还给之前执行环境。
    原子级别原理
    - 闭包 声明在哪里？ 运行的方式
    ```js
    function funcA(){
        let a =1; 
        return function(){
            console.log(a);
        }
    }
    const fun = funcA();
    ```
    - 内存的骚操作
        执行栈是内存的权力
        obj.foo()  obj.foo 内存的指向的链条 this指向对象
        foo = obj.foo; value =>地址交给了foo
        foo();普通函数
    