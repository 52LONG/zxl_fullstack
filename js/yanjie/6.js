const dogs = new Map();
const friends = new Map();
friends.set('周星驰','计划书');
friends.set('黄金时代','上校');

//遍历
for(const item of friends ){
    console.log(item);
}
//遍历 获得 key value
friends.forEach((val,key)=>console.log(val,key))

//遍历
for(const [key,val] of friends ){
    //解构
    console.log(key,val);
}
const [a,b]=[1,2];
console.log(a,b);


const {ac,bc} = {ac:1,bc:2};//?
console.log(ac,bc);
