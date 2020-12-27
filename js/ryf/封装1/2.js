/**
 * @author zxl
 * @param {any} o 
 * @param {String} type  
 * @return boolean
 */
// const isTypeof = (o,type) => {
//     if(typeof o === type)
//         return typeof 0===type;
//     else{
//         // prototype 
//         console.log(Object.prototype.constructor.toString.call(o));
//     }
      

const isTypeof = (o,type) => {
        if(['number','boolean','function','string'].indexOf(type)>0){
            return typeof 0 === type;
        }
        return Object.prototype.toString.call(o).toLowerCase().indexOf(type)>0; 
}

// const isTypeof = (o,type) => {
//     if(o === null){
//         return 'null'
//     }else if(typeof o =='object'){
//         if(typeof o.length == 'number')
//         {
//         return 'Array';}
//     else{
//         return "Object"
//     }
// }else{
//      return  'param is no object type';
// }
    
// }


// // let a = 1;
// console.log(isTypeof(a,'number'));


// let a = () =>{

// }
// let a ;
// console.log(isTypeof(a,'undefined'));

// let a = null;//宁缺
// console.log(isTypeof(a,'null'));

// null array 是有问题的
// console.log(typeof a);

//  let a = [1,2,3];
// console.log(isTypeof(a,'array'));

let a = true ;
console.log(isTypeof(a,'boolean'));