 //简单数据类型只能被替换 不能被修改
//  var str = 'I am hero';
// // len(str)//php
// console.log(str.toUpperCase());
// console.log(str);

//immutale //不变的
//const str = 'I am hero ' 不能被改变
// var str = 'I am hero';
// str = str.toUpperCase();
// console.log(str);


// 改成 const a = 5; 不会被改变
var a = 5;
function A(b){
    //不是纯函数 
    // 依赖于外部变量 a
    return a + b;
}
A(5);
