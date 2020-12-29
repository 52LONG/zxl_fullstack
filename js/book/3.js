// class Point{
//     constructor(x,y){
//         this.x = x;
//         this.y = y;
//     }
   
// }
// // Object.assign方法用于对象的合并，将源对象（source）的所有可枚举属性，复制到目标对象（target）。
// Object.assign(Point.prototype,{
//     toString(){

//     },
//     toValue(){

//     }
// })
// // console.log(Object.getOwnPropertyNames(Point));
// const o = new Point(1,2);
// // console.log(Object.getOwnPropertyNames(o));
// // console.log(Object.getOwnPropertyNames(Point.prototype));
// // console.log(Object.keys(Point.prototype));
// // console.log([...Object.getOwnPropertyNames(o),...Object.keys(o.__proto__),...Object.keys(o.__proto__.__proto__)]);

// const getAllProperties=(o)=>{

//         let arr = Object.getOwnPropertyNames(o);
//         let p = o.__proto__;
//         let res = [...arr];
//         while(p){
//             // res.push(Object.keys(p));  //[1,2].conat([3,4]) 拼接
//             const keys = Object.keys(p);
//             for(let key in keys){
//                 res.push(key);
//             }
//             // console.log(p);
//             p = p.__proto__;
//             // console.log(p);
//         }
//         // console.log(res);
//         return res;
// }
// console.log(getAllProperties(o));





class Point{
    constructor(x,y){
    this.x=x;
    this.y=y;
    }
}
Object.assign(Point.prototype,{
    toString(){},
    toValue(){}
})
const o = new Point(1,2);
// console.log(Object.getOwnPropertyNames(o))
// console.log(Object.getOwnPropertyNames(Point.prototype));
// console.log(Object.keys(Point.prototype));
// console.log([...Object.getOwnPropertyNames(o),...Object.keys(o.__proto__),Object.keys(o.__proto__.__proto__)]);

const getAllProperties =(o)=>{
    let arr = Object.getOwnPropertyNames(o);
    let p = o.__proto__;
    let res =[...arr];
    while(p){
        const keys = Object.keys(p);
        for (let key of keys){
            res.push(key);
        }
        // console.log(p);
        p = p.__proto__;
    }
    //console.log(res);
    return res;
}
console.log(getAllProperties(o));
