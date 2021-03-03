// 隐式类型转换 优先次序(高->低) String -> Number -> boolean
// 当一侧操作数为String 类型 ,会优先将另一侧转换为字符串类型
console.log(1+'2');// 12
//当一侧操作数为Number 类型 另一侧会转为Number 类型
console.log(1+ true);//2
//当一侧为Number 类型 另一侧为引用类型
console.log(1+{toString:function (){return 'ddd'}});
// 对象 在表达式 if == 数字 或字符串  toString()
//对象提供了value 类型转化
console.log(3*{valueOf:function(){return 5}});

console.log(3+{},3*{});//3[object Object] NaN
console.log({} + {});