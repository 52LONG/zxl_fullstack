//
// 类型转换 隐式 只有三种 Number String Boolean
// [] 转换 Boolean  再转换为 Number
// [] => false Boolean
//什么东西触发类型转换的?  == 触发类型转换
// console.log({} = {});//false 地址分配不一样 所以为false
console.log([] == true);
console.log([] == ![]);//true  
// ![] 优先级高  ![]转为布尔值 
console.log(Number([]));//显示类型转换  数字 0
console.log(Number(![]));//显示类型转换  数字 0
console.log(Boolean([]),'----');
console.log(Boolean(![]),'+++');
console.log(Boolean([]) == Boolean(![]));
console.log(Boolean([] == ![]));

// ![]==>空数组是对象  ， 逻辑非会返回一个布尔值。逻辑非操作符首先会将它的操作数转换为一个布尔值，然后再对其求反

//          1. 如果操作数是一个对象，返回false

//          2. 如果操作数是一个空字符串，返回true

//          3. 如果操作数是一个非空字符串，返回false

//          4. 如果操作数是数值0，返回true

//          5. 如果操作数是任意非0数值(包括infinity)，返回false

//          6. 如果操作数是null，返回true

//          7. 如果操作数是Na返回true

//          8. 如果操作数是undefined，返回true

        

// ==   如果两个操作数相等，返回true （先转换操作数再比较它们的相等性）

//          1. 如果一个操作数是布尔值，则在比较相等性之前先将其转换为数值--false转换成0   true转换成1

//          2. 如果一个操作数是字符串，另一个操作数是数值，在比较相等性之前先将字符串转化成数值

//          3. 如果一个操作数是对象，另一个操作数不是，则调用对象的valueOf()方法，用的到的基本类型值按照前面的规则进行比较

 

// 空对象  ==！空对象（空对象也是对象）

// 空对象  ==  布尔值（flase）

// 0             ==    0