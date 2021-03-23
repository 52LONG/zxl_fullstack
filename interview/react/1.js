let writer ={
    firstName:"龙",
    lastName:"小",
    num:10
}

//不太纯
//函数有什么问题？
function appendCompany(obj){
    //Object.assign方法用来将源对象（source）的所有可枚举属性，复制到目标对象（target）。
    //需要两个对象作为参数，第一个参数是目标对象，后面的参数都是源对象。
    let copyWrite = Object.assign({},obj)
    //函数修改了全局对象
    copyWrite.company = '字节' //函数的内部
    return copyWrite;
}
console.log(appendCompany(writer));
if(!writer.company){
    console.log('嗯！');
}
appendCompany();
console.log(writer);
//reducer 要避免的  纯函数