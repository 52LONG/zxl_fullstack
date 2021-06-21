// let a = function(){
//     setTimeout(()=>{
//         console.log('aaaa');
//     },1000)
     
// }


let a = function(){
    return new Promise((resolve,reject)=>{
    setTimeout(()=>{
        console.log('aaaa');
        resolve('ok')
    },1000)
    console.log('ccc');
    })
  
     
}

let b = function(){
    setTimeout(()=>{
        console.log('bbb');
    },500)
     
}

let c = function(){
    setTimeout(()=>{
        console.log('bbb');
    },100)
     
}

// a()
// b()//bb aa 
a().then((res)=>{
    console.log(res);
    b()
})
// ccc aaa ok  bbb

a().then(b)
// .then(c) 是挂载在a()上的promise的
a().then(b).then(c)

a().then(b).then(res=>{
    console.log(res);
})
