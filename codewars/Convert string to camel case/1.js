
function toCamelCase(str){
    // ^和$表示开头和结尾，\w匹配数字、字母、下划线，
    // +表示存在一个或者多个指定字符，后面i表示大小写无关，g是全局匹配
    var regExp=/[-_]\w/ig;
    return str.replace(regExp,function(match){
        console.log(match.charAt(1));
          return match.charAt(1).toUpperCase();
     });
}
// function toCamelCase(str){
//     return str.replace(/[-_](.)/g, (_, c) => c.toUpperCase());
//   }
console.log(toCamelCase("the-stealth-warrior"));
console.log(toCamelCase("The_Stealth_Warrior"));

// var str="Visit Microsoft!"
 
// console.log(str.replace(/Microsoft/, "jb51.net"));