// 以中间数为节点，判断左右两边首尾是否相等
// 思路：以中间数为节点，逐一判断左右两边首尾是否相等
var x = 12321
function isPalindrome(x) {
    if ( x < 0 || (x !== 0 && x % 10 === 0)) {
        return false
    } else if ( 0 <= x && x < 10) {
        return true
    }
    x = '' + x
    for(let i = 0 ; i < x.length/2; i++) {
        if (x[i] !== x[x.length - i - 1]) {
            return false
        }
    }
    return true
};