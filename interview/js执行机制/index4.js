function bar(){
    console.log(myName);
}

function foo(){
    var  myName = '嘉兴'
    bar()
}
var myName = '王嘉兴'

foo()  //王嘉兴

// 了解作用域链
// 查找的过程就是作用域链
// 词法作用域