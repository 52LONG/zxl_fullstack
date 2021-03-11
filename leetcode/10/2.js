var isMatch = function(s, p) {
   let arr=s.match(new RegExp(`${p}`,'g'));
//    console.log(arr);
//    console.log(arr[0]);
    if(arr&&arr[0]==s){ //如果arr不存在的话arr是null；
    return true;
    }else{
    return false;
    }
};
 console.log(isMatch('aaa','a*'));
console.log(isMatch('aacb','a*cd'));

// var patt=new RegExp(pattern,modifiers);
// 或者更简单的方式:
// var patt=/pattern/modifiers;
// pattern（模式） 描述了表达式的模式
// modifiers(修饰符) 用于指定全局匹配、区分大小写的匹配和多行匹配
// i	执行对大小写不敏感的匹配。
// g	执行全局匹配（查找所有匹配而非在找到第一个匹配后停止）。
// m	执行多行匹配。
// match	找到一个或多个正则表达式的匹配。