function more(arr) {
    let max=null;//定义一个用来存储出现次数最多的元素
    let num=1;//定义一个用来存储最出现的次数
     arr.reduce((p,k)=>{ //对该数组进行reduce遍历
         p[k]?p[k]++:p[k]=1;
             if(p[k]>num){
                 num=p[k]
                 max=k
             }
             return p
    },{})
    return {max:max,num:num}//返回最多元素对象
}
let arr = [1,1,22,2,2,3,4,5,5,5,5,5,6,6,8,8,4,5,2,2,2];
console.log(more(arr));