//使用高阶函数
//思路：先将数字转成字符串A，再经过变成数组，
//数组反转，数组变成字符串B三步操作之后，比较字符串A和B，得出结论。

var x =12321;
function isPalindrome(x) {
    if ( x < 0 ) return false
    let str = '' + x
    // console.log(str);
    return Array.from(str).reverse().join('') === str
};
console.log(isPalindrome(x));