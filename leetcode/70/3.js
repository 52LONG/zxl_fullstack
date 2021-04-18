var climbStairs = function (n) {
    // CPCT
    // dp[i] = dp[i - 1] + dp[i - 2]
    // 1 2 3 5 8 ... 典型的斐波拉契数列
  
    // 思路一 递归 超时警告❌
    const recursion = n => {
      if (n <= 2) return n
      return recursion(n - 1) + recursion(n - 2)
    }
    return recursion(n)
  
  
    // 思路二 动态规划 + 数组/变量 （因为只需最终结果）
    //  dp[i] = dp[i - 1] + [i - 2]
    if (n <= 2) return n
  
    const dp = [1, 2, ...new Array(n - 2).fill(0)]
  
    for (let i = 2; i < n; i++) {
      dp[i] = dp[i - 1] + dp[i - 2]    
    }
  
    return dp[n - 1]
  
    // 思路三 DP + 常量数组
    if (n <= 2) return n
  
    const dp = [0, 1] // dp[0] 前一项 dp[1] 当前项
    let temp   
    for (let i = 0; i < n; i++) {
      temp = dp[0]
      dp[0] = dp[1]
      dp[1] = temp + dp[1]     
    }
  
    return dp[1]
  
    // 思路四(推荐) DP + 常量级 变量 prev cur temp
    let prev = 0, cur = 1, temp
  
    while (n--) {
      temp = prev
      prev = cur
      cur += temp // 当前项 = 当前项 + 上项（使用temp作中间状态存储）
    }
  
    return cur
  
    // 思路五 数学 利用斐波拉切数学公式 
    const sqrt_5 = Math.sqrt(5)
    const fib_n = Math.pow( (1 + sqrt_5) / 2, n + 1 ) - Math.pow( (1 - sqrt_5) / 2, n + 1 )
    
    return Math.floor(fib_n / sqrt_5)
    
  };
  
 