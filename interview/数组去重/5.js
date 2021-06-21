function unique(arr) {
    if (!Array.isArray(arr)) {
        console.log('type error!')
        return
    }
    let res = [],
        obj = {}
    for (let i = 0; i < arr.length; i++) {
        //  console.log(obj[arr[i]]);// undefined,undefined,undefined,undefined, 1,2,1,2,1,2,undefined,undefined 
        if (!obj[arr[i]]) {
            res.push(arr[i])
            obj[arr[i]] = 1
        } else {
            obj[arr[i]]++
        }
    }
    return res
}


var arr = [1,2,3,4,1,1,2,2,4,4,6,8]
console.log(unique(arr));
// console.log(!undefined); //true
let obj = {
    a:{
        b:{
            c:{
                d:12
            }
        }
    }
}
let a ='a'
let b = 'b'
let c = 'c'
let d = 'd'
console.log(obj[a[b[c[d]]]]);
// console.log(obj[a]);
// obj = obj[a]
// console.log(obj[b]);
// obj = obj[b]
// console.log(obj[c]);
// obj = obj[c]
// console.log(obj[d]);