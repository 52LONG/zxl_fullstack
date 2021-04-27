var rob = function(nums) { 
    let length = nums.length 
    let dp = new Array( length)
      dp[0] = nums[0];
    dp[1] =Math.max(dp[0],nums[1])
    for(let i = 2 ; i<length;i++){
        dp[i] = Math.max(dp[i-2]+nums[i],dp[i-1]);
    }
    return dp[length-1];
};
// let nums = [1,2,3,1];
let nums = [2,11,9,3,1]
console.log(rob(nums));