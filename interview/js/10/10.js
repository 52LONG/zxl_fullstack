//  1.有哪些情况会是undefined?
 let a;//声明 没有赋值
//  变量声明时，js类型由值决定
 console.log(typeof a);

// 2. ？函数没有返回值
const fnNoReturn = ()=>{
    console.log(fnNoReturn(),'2');
}
//3. 传参不传值
const fn =(b)=>{
    //一运行就会有的 this -> 指针对象 指向一个对象
    console.log(arguments);
    console.log(typeof b);
}
console.log(fn(1,2,3));
//4. 对象上没有声明的属性也是undefined
const o ={ c:'1'}
console.log(o.d,'2'); //undefined
// console.log(zr);//直接用未定义的变量直接报错 语法报错
console.log(null == undefined);// true   值相等
console.log(null === undefined);// false  全等(值和属性都相等)
// // 1. 调用没有定义的变量 
// function show(b){
//    alert(b);  
// }
// show(b);
// // 2. 声明了变量却没有值
// var a;
// alert(a);
// 	// 1）另外 声明了变量也付了值   但是值找不到  返回的是 null
// 		var a=document.getElementById('box')    //box 没有
// 		alert(a)
// // 3. 参数定义了没有传值
// function show(b){
   
// }
// alert(show());
// // 4. 函数中没有写return 返回的值 就是undefined
// function show(b){
   
// }
// // 5. 如果写了return 却没有声明值 也是undefined
// function show(b){
//    return
// }
