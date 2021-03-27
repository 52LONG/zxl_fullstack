var waysToChange = function(n) {
    //动态规划的方法 
    const coins = [25,10,5,1];
    if (n === 0) return 1;
   //Array(n+1).fill(0) 创建新数组并将数组所有值填充为0
    const dp =new Array(n+1).fill(0);
    //   console.log(dp);
    dp[0] = 1;
    for (let i= 0; i < coins.length; i++) {
    //    const  coin = coins[i];
      for (let j = coins[i]; j < n +1; j++) {
            //存储组合方法个数
          dp[j] = (dp[j] + dp[j - coins[i]])%1000000007;
        //   console.log(dp[j]); 
        }
      }
    
//   console.log(dp.length-1);
    //返回有多少组合方法
    return dp[n];
  };
  console.log(waysToChange(10));