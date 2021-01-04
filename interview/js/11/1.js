 const arr = [3,4,5];
 //给出在数组尾部、头部 添加和删除的方法
 arr.push(6); //面向对象的方法
 console.log(arr.pop()); //pop()查看最后一个元素

 arr.unshift(1);
//  arr.shift(1);

for(let num in arr){
    console.log(num); 
} 

arr.forEach(item => {
    console.log(item);
})

console.log(arr.join(" "));
console.log(arr.splice(0,arr.length));

console.log(arr.map(item => item)); 
