//从后往前循环字符串数组
//思路：将数字转换成字符串A，从后往前循环字符串A，
//将循环出来的字符拼接成新的字符串B，比较字符串A和B，得出结论。

var x = 12321;
function isPalindrome(x) {
    let str =''+x 
    // console.log(str);
    let newStr = ''
    for(let len = str.length, i = len - 1; i >= 0 ; i--) {
        newStr += str[i]
    }
      return newStr === str
}

console.log(isPalindrome(x));