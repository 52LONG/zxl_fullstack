var a = 2;
// function add(){
//     b  = 10;
//     return a+b;
// }
function add1(b,c){
    return b+c;
}
function addAll(b,c){
    var d = 10;
    result = add1(b,c);
    return a + result + d;
}
// console.log(add()); 
// console.log(b);


// 什么是调用栈？
console.log(addAll(3,6));
