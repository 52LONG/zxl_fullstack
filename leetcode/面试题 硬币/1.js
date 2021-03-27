var change = function(amount, coins) {
    //动态规划的方法 
    if (amount === 0) return 1;
   //用concat()将数组[1]和数组Array(amount)数组连接起来 命名为dp
   //Array(amount).fill(0) 创建新数组并将数组所有值填充为0
    const dp = [1].concat(Array(amount).fill(0));
    //   console.log(dp);
    for (let j = 0; j < coins.length; j++) {
      for (let i = 1; i < amount + 1; i++) {
          //总额减去硬币面额大于0则执行 
        if (i - coins[j] >= 0) {
            //存储组合方法个数
          dp[i] = dp[i] + dp[i - coins[j]];
        //   console.log(dp[i]);
        }
      }
    }
//   console.log(dp.length-1);
    //返回有多少组合方法
    return dp[dp.length - 1];
  };
console.log(change(5,[25,10,5,1]));