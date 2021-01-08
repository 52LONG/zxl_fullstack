// 1. 先取符号 采用es6 Math.sign 符号函数， 正数返回 1 ，负数返回 -1
// 2. 绝对值-> 转字符串 -> 字符串转数组 -> 反转数组 -> 字符串 -> 上符号 -> 判断范围
var reverse = function(x) {
    let sign = Math.sign(x) //判断正负 正数返回 1 ，负数返回 -1
    //Math.abs(x) 取绝对值-> (Math.abs(x) + '')转字符串 ->.split('') 字符串转数组 -> .reverse()反转数组 ->join('') 字符串 ->  * sign添加符号
    let res = (Math.abs(x) + '').split('').reverse().join('') * sign   
    // 判断范围  数值范围为 [−2^31,  2^31 − 1]
    if (res > Math.pow(2, 31) - 1 || res < -Math.pow(2, 31) ) res = 0
    return res

}
console.log( reverse(-1230));