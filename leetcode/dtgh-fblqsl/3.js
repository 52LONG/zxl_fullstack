//硬币组合   动态规划算法
const coinChange = function (coins,amount){
    //用于每个目标总额对应的最小硬币个数
    const f = [];
    f[0] = 0;
    for(let i= 1;i<=amount;i++){
        f[i] = Infinity;//无穷大的数
        //得到上一次的金额 +1 比较
        //遍历每个可用硬币的面额
        for(let j =0; j<coins.length;j++){

            if(i-coins[j]>=0){//可以成这个金额
                f[i] = Math.min(f[i],f[i-coins[j]]+1)
                //找出当前总金额是否有最小硬币个数相匹配
                //如f(1) 与 硬币面额1 相匹配最下硬币数  f(1) = 1
                // 如f(5) 与 硬币面额5 相匹配最小硬币数  f(5) = 1    f(5) => 1*5 | 2*2+1*1 | 5*1 
                //因f(11) 与两个f(5)和一个f(1) 匹配  那么就是 3个    
                // console.log(Math.min(f[i],f[i-coins[j]]+2));
            }
        }
    }
    if(f[amount]=== Infinity){
        return -1;
    }
    return f[amount];
}
console.log(coinChange([1,2,5],11));