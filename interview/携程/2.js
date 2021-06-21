function test(N){
    let dp=[1,1];
    let tag = 0;
    let arr =[];
    for(let a = 1;a<N;a++){
        arr.push(Math.pow(a,2))
    }
    if(N<=2){
       return 0;
    }
    for(let i= 2;i<N;i++){
        dp[i] = dp[i-1]+dp[i-2];
        
    }
    for(let j = 0;j<dp.length;j++){
        arr.forEach(item =>{
            if(item == dp[j]){
                tag++;
            }
        })
    }
    
    
    return tag
}
console.log(test(100));