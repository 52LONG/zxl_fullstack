// 有多层数组，例如[1, [2, [3, 4, [5]]]]
// 请将数据扁平化，得到值 [1, 2, 3, 4, 5]

let a = [1, [2, [3, 4, [5]]]];
// console.log(a.flatMap());
// console.log(a.flat()); 
function flat(a){
   let b = a.toString().split(',')
   let c=[]
   console.log(b);
   for(let i = 0;i<b.length;i++){
    c.push(b[i]/1)
   }
   console.log(c);
}
flat(a)
