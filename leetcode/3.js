const numbers =[3,62,234,7,23,74,23,76,92];
const arr = [];
// const largeNumbers=numbers.forEach((e,i)=>{
//     if(e>70){
//         arr.push(e);//给数组添加新元素
//     }
// })
//在forEach 基础上
//filter 内置函数
// const cb= (number,)=>//两个参数
// const cb= number=>
// { 
//     return number > 70 //为真进行下一步
// }//一个参数
const cb= number=>number > 70
const largeNumbers=numbers.filter(cb);//过滤
console.log(largeNumbers);