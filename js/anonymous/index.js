//事件执行函数 ，叫什么名字无所谓
// addEventListener('click',()=>{

// });

//函数定义，不适合匿名函数使用场景
// function (){

// }


// 驼峰式命名
//  const funcA= function (){// 匿名函数
//    let foo = 10;
//    let bar = 2;
//    console.log(foo * bar); 

// }
// funcA();

//闭包的前奏
//立即执行的函数
// 匿名函数
(function (foo,bar){
    console.log(foo * bar); 
 })(20,3);
//  foo ,bar 值传过去


// 值交给外界怎么办？
let res = (function (foo,bar){
    return foo * bar; 
 })(20,3);
 console.log(res);