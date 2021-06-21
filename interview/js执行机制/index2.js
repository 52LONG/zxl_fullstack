//声明 放在执行上下文中
var myname = undefined;
function showName(){
    console.log('showName函数声明');
}
// //变量环境里
// myname:undefined
// showName:function(){}


//可执行代码
showName()
console.log(myname);
myname = '队长'


