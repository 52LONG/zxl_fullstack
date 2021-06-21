showName()
//函数声明会整体提升
console.log(myname);
// var 只是变量提升
var myname = '队长';

function showName(){
    console.log('队长222');
}

// 为什么变量会提升？
// 为什么后面覆盖前面的？
