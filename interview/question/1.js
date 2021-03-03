//网易面试
// let a = [1,2,3];
// // console.log(a.shift());
// // && 与
// a.join = a.shift; //其中一种答案
//对象 类型转换 1 
const a = {
    // i:0,//设置一个变量 自增
    // valueOf:function(){return ++this.i}
    // valueOf:function(){return 0}
    value:[3,2,1],
    valueOf:function(){return this.value.pop()}

}
console.log(a == 1 && a == 2 && a == 3 );//true