//爬梯子 动态规划算法
const climbStairs = function(n){
    if(n==1 || n ==2){
        return n;
    }
    const f = [];
    f[0] = 1;
    f[1] = 2;
    for(let i = 2; i<n; i++){
        f[i]=f[i-1]+ f[i-2];
    }
    
    return f[n-1];
}
console.log(climbStairs(99) ); 