// 构建对象
//抽象的概念 类
// es6 以前没有class 关键字
//模板
// var Cat = {
//     name:'',
//     color:'',
//     sayHello(){
//     }

// }
//函数是天生可以复用
function Cat(name,color){
    return {
        name,
        color
    }
}
var cat1 = Cat("大毛","黄色");
console.log(cat1);
var cat2 = Cat("二毛","黑色");
console.log(cat2);