function Cat(name,color){//函数封装
    this.name = name;// this 指向它的示例
    this.color = color;
    // this.type ="猫科动物";
    //prototype 要生成的原因
    // this.eat = function(){//动作
    //     console.log('老鼠');
    // }
}
//为什么要用prototype方法 new 的执行过程 要获得一个实例就要new一下 
// new 的时候一定会执行Cat函数所有内容 涉及到内存的消耗和分配
//prototype 原型对象  
Cat.prototype.eat =function (){
    
    console.log('老鼠');
}
Cat.prototype.type="猫科动物";

//static 静态
// Cat.eat = function(){
//     console.log('老鼠');
// }

//实例化
var cat1 = new Cat("大毛","黄色"); //new 
var cat2 = new Cat("二毛","黑色");
console.log(cat1);
console.log(cat1.constructor);//构造函数   constructor 指向是谁生的
console.log(cat1.constructor == cat2.constructor);
console.log(cat1 instanceof Cat); //instanceof 判断cat1是否是 Cat 的实例
console.log(cat2 instanceof Cat);
cat1.eat();