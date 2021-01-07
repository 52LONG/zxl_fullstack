// function disemvowel(str) {
//     var newStr = "",
//     i;
//     for ( i = 0; i <= str.length; i++) {
//       if (str.charAt(i) == "a" || str.charAt(i) == "e" || str.charAt(i) == "i" || str.charAt(i) == "o" || str.charAt(i) == "u") {
//         newStr +="";
//       }else{
//         newStr += str.charAt(i);
//       }  
//     } 
//    return newStr; 
// //   }
//   function disemvowel(str) {
//     var newStr = "",
//     i;
//     for ( i = 0; i <= str.length; i++) {
//       if (str.charAt(i) != "a" && str.charAt(i) != "e" && str.charAt(i) != "i" && str.charAt(i) != "o" && str.charAt(i) != "u") {
//         newStr += str.charAt(i);   
//     } 
// }
//    return newStr; 
//   }
// console.log(disemvowel("This website is for losers LOL!"));
function disemvowel(str) {
    var newStr = "",
        i;

    for (i = 0; i < str.length; i++) {
        if ("aeiou".includes(str[i].toLowerCase())) continue;
        newStr += str[i];
    }
    return newStr;
}

console.log(disemvowel("This website is for losers LOL!"));
