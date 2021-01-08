function duplicateCount(text){
    var str = text.toLowerCase().split('').sort().join('');
    //请得到所有数字
    // var word = '123-4560-666';
    // console.log(/\d+/.test(word));
    // console.log(word.match(/\d+/g));//  /g是全局匹配
//    /\d+/.test();  正则 判断字符是否符合规则
    // [] 取值范围   + 一个或多个   [^]    /w 是字符串
    // 
    // var arr = str.match(/([a-zA-Z])\1+/g);  //  \1 是之前匹配的第几组  RegExp.$1
    // 相邻的字符是一样的
    var arr = str.match(/(.)\1+/g);  //(.)是匹配所有 字母和数字
   return arr.length;
}
console.log(duplicateCount('aaadsdjfwuhh'));