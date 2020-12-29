# JS 的灵魂在函数 ，函数的灵魂在匿名函数
 
  - 匿名函数
    ```JS
        ()=>{}
        function (){}
         跟立即函数结束起来
        (function(){

        })();
    ```

  -作为图书管理系统，写个书的入库类
    JS 面向对象 class 关键字来的比较晚，用function 来构造类
    JS 类有点像火车， 火车头， 车身
    ``` javascript
    //单独构造函数就可以成为一个类 
    function Book(isbn,name,author){
          this.isbn = isbn;
          this.name = name;
          this.author = author;
    }
    ```

  - 构造函数与普通函数的区别
     生产实例 constructor
     this...

     this....
     一步步来 ，构造过程
     1. 构造函数函数名首字母大写
     2. 运行的方式()() new fn()
     new 的时候会把构造函数执行一下，并且this指向当前对象
     3. this 指向实例
     4. 对象上 ，原型对象都是Object
     5. Object 是顶层对象，也是一个函数 new Object() {}
     6. 任何一个函数都有一个prototype属性 火车身
     7. 任何一个对象实例都一定有__oroto__私有属性
        指向原型对象，基于原型的
        js_dontKonw.display();基于原型继承父类的方法  
        js_dontKonw.__proto__.__proto__==Object.prototype  //true
     8. 原型链
        Object.prototype.toString.call(js_dontKonw) //"[object Object]"
        js_dontKonw.toString() //"[object Object]"
