var isMatch = function(s, p) {
    let n = s.length;
    let m = p.length;
    //使用对象填充数组 Array.from()
    //Array(length).fill(false);  fill() 使用初始值正确填充数组。
    let dp = Array.from(new Array(n+1),() => new Array(m+1).fill(false));
    // console.log(dp);
   //两个空字符串，为true
    dp[0][0] = true;
   for(let j = 1;j <= m;j++){
       if(p[j-1] == '*'){
           dp[0][j] = dp[0][j-1];
        //    console.log(dp);
       }
   }
    for(let i = 1;i <= n;i++){
        for(let j = 1;j <= m;j++){
            if(s[i-1] == p[j-1] || p[j-1] == '?'){
                dp[i][j] = dp[i-1][
                    j-1];
                // console.log(dp);
            }else if(p[j-1] == '*'){
                //dp[i-1][j]：匹配任意非空字符，例如abkk,ab*
                //dp[i][j-1]：匹配空字符相当于0个，例如ab，ab*
                 dp[i][j] = dp[i][j - 1] || dp[i - 1][j];
                 console.log(dp);
            }
        }
    }
    return dp[n][m];
};
console.log((isMatch('abc','a*'))); 
console.log((isMatch('aa','a'))); 