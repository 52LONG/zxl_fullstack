
// 　var name = "The Window";

// 　　var object = {
// 　　　　name : "My Object",

// 　　　　getNameFunc : function(){
// 　　　　　　return function(){
// 　　　　　　　　return this.name;
// 　　　　　　};

// 　　　　}

// 　　};
// var t = object.getNameFunc();
// var tt= t();
// console.log(tt); 
// 当一个函数作为函数而不是方法调用的时候，这个this关键字引用全局对象。容易令人混淆的是，
// 当一个嵌套的函数（作为函数）在一个包含的函数中调用，而这个包含的函数是作为方法调用的，
// 这也是成立的：this关键字在包含的函数中有一个值，但是它却（不太直观地）引用嵌套的函数体的内部的全局对象。
// 所以第一个打印出来的是"The Window"
// 代码段二、
// 
　　var name = "The Window";
　　var object = {
　　　　name : "My Object",
　　　　getNameFunc : function(){
　　　　　　return function(){
        console.log(this.name);
　　　　　　　　return this.name; //这个this是有上下文的限制的
　　　　　　};
　　　　}
　　};
var tmp = object.getNameFunc()(); //此时没有执行this.name
// var names = tmp();//这个时候才执行，这时候的this上下文为全局
console.log(tmp); 