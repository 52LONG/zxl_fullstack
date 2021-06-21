let a = ["2019-12-30", "2021-01-26", "2020-10-28", "2021-01-27", "2021-01-29", "2021-01-24", "2021-01-25"]

 console.log( a.sort(function(i,j){
    return new Date(i) - new Date(j)
})); 

let a = [6,3,5,4,5,1];
function test(a){
    for(let i= 0;i<a.length;i++){
        for(let j = 0;j<a.length -i;j++){
        if(a[j]>a[j+1]){
            [a[j],a[j+1]]=[a[j+1],a[j]]
        }
    }
}
    return a;
}
console.log(test(a));
 