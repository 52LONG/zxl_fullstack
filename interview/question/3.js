var a = 0xa; //这是什么? 进制数 16
console.log(typeof a);//Number
var b = 010; // 8进制 
var c = 0b01; // 2进制
console.log(c + 3);//转为十进制
console.log(b + 19);//转为十进制
// js  浮点类型不精确 
// js 没有浮点数类型  Number   不适合高精度计算
// js 转成二进制的时候 无限的循环 32位  现在有64位   舍弃一些位 导致二进制位相加时  不准确
// 0.30000000000000004
console.log(0.1+0.2);
console.log((8).toString(8));
console.log((0.1).toString(2)); //toString 传进制数 2进制
console.log((0.2).toString(2));



console.log(Number.parseInt('010',8));

console.log(Number.parseInt('20',2));//结果是 NaN 二进制不可能出现2的
// 跟什么相关 ?  上溢 大数字 BigInt
// JS Number 类型只能安全地表达 - 9007199254740991(-2(^53-1))
console.log(9999999999999999999);//10000000000000000000
console.log(9999999999999999999n);
console.log(9007199254740992 === 9007199254740993); //不安全
console.log(9007199254740992n === 9007199254740993n);
// console.log(10 + 10n);