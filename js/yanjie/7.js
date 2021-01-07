function duplicateCount(text){
    var str = text.toLowerCase().split('').sort().join('');
    var word = '123-4560-666';
//    /\d+/.test();  正则 判断字符是否符合规则
    var arr = str.math(/(-)\1/g);

    console.log(str);
}
// console.log(duplicateCount('aadsdjfwuhh'));