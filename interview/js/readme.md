# 把面试题当成高考题
    1. 以题目来检测下当前js之所学  推动之
    2. 衡水一中 清北方法论  黄冈中学 出试卷
        打卡 课后做的任何事情  一天打一次卡
        能力增长点
        js能力

- null 和 undefined 的区别是什么
    Object.prototype.__proto__ == null
            Undefined 意义是类型 当一个声明了一个变量未初始化 ，得到的是undefined 
    1. 箭头函数和普通函数不一样
        es5时代的arguments 有用的
        不只是便利，也被干掉了arguments
        ()=>{} 箭头函数    其中function(){}都可以省掉 (arguments 也没有了)但是es6提供了... reset 运算符
        function() {}  
    2. Object 原型对象是null
     new Object()
     Object(函数).prototype 父(原型)对象
     Object(函数).prototype.__proto__ 
     为什么？ 到顶了不该有原型
     null 此处没有对象，不该有值
     js 像禅宗一样，充满着智慧
    3. javascript中，“函数”（方法）也是对象。
    4. 一切对象都有一个根源。它是Object.prototype。
    5. 根源之上再没有其他根源，Object.prototype.proto === null
    6. 每个函数都有一个prototype属性，它是一个指向原型对象的指针，原型对象在定义函数时同时被创建，原型对象的用途是包含所有实例共享的属性和方法
    7. 当调用构造函数创建一个新实例后，该实例的内部将包含一个指针proto，该指针指向创建它的构造函数的原型(prototype)，大多数浏览器都支持proto
        function Person(){
        }
        //自定义原型对象的属性和方法
        Person.prototype.name="Tom";
        Person.prototype.sayName=function(){
        console.log(this.name);
        };
        //原型对象中的所有属性和方法 都会自动被所有实例所共享
        var person1=new Person();
        var person2=new Person();
        person1.sayName();//Tom
        person2.sayName();//Tom
        console.log(person1.__proto__===Person.prototype);//true
    8. Object和Function既是对象，又是函数，两者内部同时含有proto和prototype属性，他们关系较为复杂，以下做归纳。

        Function.prototype指向”内置函数“。而Object.prototype指向"根源对象"

        Object.__proto__ === Function.prototype //true
        Object.__proto__ === Function.__proto__//true
        Object.prototype === Function.prototype.__proto__ // true
        //因此
        Function instanceof Object //true
        Object instanceof Function //true

    9. console.log(null == undefined);// true   值相等
        console.log(null === undefined);// false  全等(值和属性都相等)

    10. typeof Array
        "function"
    11. 选择元素可以通过标签、id 选择器（）、类名、子元素（）
        任何元素都有这样的方法，不仅限于document
        1.找到所有的.box元素有什么方法？
            // 通过ID获取（getElementById）
            // 通过name属性（getElementsByName）
            // 通过标签名（getElementsByTagName）
            // 通过类名（getElementsByClassName）
           // 通过选择器获取一个元素（querySelector）
           // 通过选择器获取一组元素（querySelectorAll）
           // 获取html的方法（document.documentElement）
           // document.documentElement是专门获取html这个标签的
           // 获取body的方法（document.body）
           //  document.body是专门获取body这个标签的。