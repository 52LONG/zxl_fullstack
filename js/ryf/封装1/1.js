// 函数 对象
// js 类型
let a; //声明变量 undefined 类型未定义 改成const不行，const 为常量 
console.log(typeof a);//undefined
const b = "hello";
console.log(typeof b);//string
const arr=[1,2,3];
console.log(typeof arr);//object
const obj = {a: 1}
console.log(typeof b)
    a = 1;
   console.log(typeof a);//number
function Cart(){
    this.type="择耳"
}
Cart.prototype.sayHello = function(){
    console.log("喵");
}