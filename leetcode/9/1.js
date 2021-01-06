// split(’’)将字符串分解成为了字符串数组
// reverse()将字符串数组里面的元素反向排列
// join(’’)将字符串数组成为拼成一个字符串
// var a = '12356dsdjsd';
// var b = a.split('');//将原字符串按空格分解
// console.log(b);
// var c = a.split(',');//将原字符串按','分解
// console.log(c);
// var bb = a.split('').reverse();
// console.log(bb);
// var cc = a.split(',').reverse();
// console.log(cc);
// var bbb = a.split('').reverse().join('');
// console.log(bbb);
// var ccc = a.split('').reverse().join('');
// console.log(ccc);

function isPalindrome (x) {
    var str=x.toString()
    if(str.split('').reverse().join('')===str){
        return true;  
    }else{
        return false;
    }
  
   
};
console.log(isPalindrome(123212)); 
