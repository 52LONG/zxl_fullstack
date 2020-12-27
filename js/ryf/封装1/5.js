function Cat(name,color){
    this.name = name;// this 指向它的示例
    this.color = color;
}

var cat1 = new Cat("大毛","黄色"); //new 
var cat2 = new Cat("二毛","黑色");
console.log(cat1);
console.log(cat1.constructor);//构造函数   constructor 指向是谁生的
console.log(cat1.constructor == cat2.constructor);
console.log(cat1 instanceof Cat); //instanceof 判断cat1是否是 Cat 的实例
console.log(cat2 instanceof Cat);