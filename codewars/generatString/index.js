//  console.log("hello world".split(' ')[0].toUpperCase().charAt(0)+"hello world".slice(1));
// let name = 'hello'
// console.log(name.charAt(0).toUpperCase() + name.slice(1));
// function generateHashtag(str) {
//     // 'hello world'  'Hello World'
//     let arr = [];
//     str
//       .split(' ')
//       .forEach(item => {
//         // console.log(item);
//         arr.push(item.charAt(0).toUpperCase() + item.slice(1))
//       })
//     // console.log(arr);
//     return arr.join(' ')
//   }
//   console.log(generateHashtag('hello world'));
function generateHashtag(str) {
    return str.length>140 || str ==='' ? false:'#'+str.split(' ').map(capitalize).join(' ');
}
  //map 的callback 
function  capitalize(item){
    return item.charAt(0).toUpperCase()+item.slice(1);
}
console.log(generateHashtag('hello world'));